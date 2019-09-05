
#include "o.expr.file.h"


#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
//#include "ext_buffer.h"
//#include "buffer.h"

#include "osc.h"
#include "osc_expr.h"
#include "osc_expr_parser.h"
#include "osc_mem.h"
#include "osc_atom_u.h"
#include "osc_error.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_iterator_s.h"

#include "o.h"


typedef struct _oexprfile
{
    t_object ob;
    t_object *t_editor;
    char **t_text;
    long t_size;
    
    t_osc_expr *expr;
    t_critical lock;
    void *filewatcher;

    char path_file[MAX_PATH_CHARS];
    
    void *outlets[2];
} t_oexprfile;


void *oexprfile_class;

void oexprfile_fullPacket(t_oexprfile *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    
    if(len <= 0){
        return;
    }
    // we need to make a copy incase the expression contains assignment that will
    // alter the bundle.
    // the copy needs to use memory allocated with osc_mem_alloc in case the
    // bundle has to be resized during assignment
    char *copy = NULL;
    long copylen = len;
    if(strncmp(ptr, "#bundle\0", 8)){
        char alloc = 0;
        osc_bundle_s_wrapMessage(len, ptr, &copylen, &copy, &alloc);
    }else{
        copy = (char *)osc_mem_alloc(len);
        memcpy(copy, ptr, len);
    }
    int ret = 0;
    
    critical_enter(x->lock);
    t_osc_expr *f = x->expr;
    if(!f){
        //t_osc_atom_ar_u *av = NULL;
        //osc_expr_evalLexExprsInBndl(&copylen, &copy, &av);
    }else{
        while(f){
            //int argc = 0;
            t_osc_atom_ar_u *av = NULL;
            ret = osc_expr_eval(f, &copylen, &copy, &av, x);
            if(av){
                osc_atom_array_u_free(av);
            }
            if(ret){
                break;
            }
            f = osc_expr_next(f);
        }
    }
    critical_exit(x->lock);
    
    if(ret){
        omax_util_outletOSC(x->outlets[1], len, ptr);
    }else{
        omax_util_outletOSC(x->outlets[0], copylen, copy);
    }
    if(copy){
        osc_mem_free(copy);
    }
}

void oexprfile_parseText(t_oexprfile *x)
{
    if(x->expr){
        critical_enter(x->lock);
        osc_expr_free(x->expr);
        x->expr = NULL;
        // search and replace #n params
        critical_exit(x->lock);
    }
    
    if(x->t_size == 0){
        return;
    }
    
    critical_enter(x->lock);
    // search and replace #n params
    osc_expr_parser_parseExpr(*x->t_text, &(x->expr), x);
    
    if(x->expr != NULL) {
        // error
    } else {
        // read it
    }
    
    critical_exit(x->lock);
}

void oexprfile_dblclick(t_oexprfile *x)
{
    
    char buf[MAX_PATH_CHARS+256];
    
    // so we need to get the path of the external editor I guess?
    // or you could open with a name of the editor you want to use? idk
    
    // the preferences are in the ~/Library folder, but not the path
    // it just says the name of the application, so we could maybe use:
    // short path_getapppath(void);
    // to get the path to the /Applications folder
    // and then search from there, but could the editor be in a different folder?
    
    
    sprintf(buf, "nohup %s %s </dev/null >/dev/null 2>&1 &", "/Applications/Visual\\ Studio\\ Code.app/Contents/MacOS/Electron", x->path_file );
    system(buf);
    return;
    
    if (x->t_editor)
        object_attr_setchar(x->t_editor, gensym("visible"), 1);
    else {
        x->t_editor = (t_object *)object_new(CLASS_NOBOX, gensym("jed"), x, 0);
        object_method(x->t_editor, gensym("settext"), *x->t_text, gensym("utf-8"));
        object_attr_setchar(x->t_editor, gensym("scratch"), 1);
        object_attr_setsym(x->t_editor, gensym("title"), gensym("o.expr.file"));
    }
}


void oexprfile_procFile(t_oexprfile *x, char *filename, short path)
{
    // success
    t_filehandle fh;
    long err = path_opensysfile(filename, path, &fh, READ_PERM);
    if (!err) {
        sysfile_readtextfile(fh, x->t_text, 0, TEXT_LB_UNIX | TEXT_NULL_TERMINATE);
        sysfile_close(fh);
        x->t_size = sysmem_handlesize(x->t_text);
        
        x->filewatcher = filewatcher_new((t_object *)x, path, filename);
        if(x->filewatcher)
            filewatcher_start(x->filewatcher);
        
        
    }
    
    oexprfile_parseText(x);
}


void oexprfile_doread(t_oexprfile *x, t_symbol *s, long argc, t_atom *argv)
{
    char filename[MAX_PATH_CHARS];
    short path;
    t_fourcc type = FOUR_CHAR_CODE('TEXT');

    
    if (s == gensym("")) {
        filename[0] = 0;
        
        if (open_dialog(filename, &path, &type, &type, 1))
            return;
    } else {
        strcpy(filename,s->s_name);
        if (locatefile_extended(filename, &path, &type, &type, 1)) {
            object_error((t_object *)x, "can't find file %s",filename);
            return;
        }
    }
    
    char fullPath[MAX_PATH_CHARS], fullPathNative[MAX_PATH_CHARS];
    path_topathname(path, filename, fullPath);
    path_nameconform(fullPath, fullPathNative, PATH_STYLE_SLASH, PATH_TYPE_BOOT);

    critical_enter(x->lock);
    memset(x->path_file, '\0', MAX_PATH_CHARS);
    strncpy(x->path_file, fullPathNative, MAX_PATH_CHARS);
    critical_exit(x->lock);
    
    oexprfile_procFile(x, filename, path);
}


void oexprfile_read(t_oexprfile *x, t_symbol *s)
{
    defer((t_object *)x, (method)oexprfile_doread, s, 0, NULL);
}

void oexprfile_filechanged(t_oexprfile *x, char *filename, short path)
{
    // defer?
    oexprfile_procFile(x, filename, path);
}


void oexprfile_edclose(t_oexprfile *x, char **text, long size)
{
    if (x->t_text)
        sysmem_freehandle(x->t_text);
    
    x->t_text = sysmem_newhandleclear(size+1);
    sysmem_copyptr((char *)*text, *x->t_text, size);
    x->t_size = size+1;
    x->t_editor = NULL;
    
    oexprfile_parseText(x);
}


void oexprfile_bang(t_oexprfile *x)
{
    char buf[16];
    memset(buf, '\0', 16);
    strncpy(buf, "#bundle\0", 8);

    t_atom a[2];
    atom_setlong(a, 16);
    atom_setlong(a + 1, (long)buf);
    oexprfile_fullPacket(x, NULL, 2, a);
    
}


void oexprfile_assist(t_oexprfile *x, void *b, long m, long a, char *s)
{
    if (m == ASSIST_INLET)
        sprintf(s, "Message In");
}

void *oexprfile_new(t_symbol *s, long argc, t_atom *argv)
{
    t_oexprfile *x = NULL;
    
    x = (t_oexprfile *)object_alloc(oexprfile_class);
    
    x->t_text = sysmem_newhandle(0);
    x->t_size = 0;
    x->t_editor = NULL;
    x->filewatcher = NULL;
    
    critical_new(&(x->lock));

    x->outlets[1] = outlet_new((t_object *)x, "FullPacket");
    x->outlets[0] = outlet_new((t_object *)x, "FullPacket");
    
    if( argc == 1 && atom_gettype(argv) == A_SYM)
    {
        oexprfile_read(x, atom_getsym(argv) );
    }
    
    return x;
}

void oexprfile_free(t_oexprfile *x)
{
    object_free(x->t_editor);
    if (x->t_text)
        sysmem_freehandle(x->t_text);
    
    if(x->expr){
        osc_expr_free(x->expr);
    }
    
    critical_free(x->lock);

    if(x->filewatcher)
        object_free(x->filewatcher);
}


void ext_main(void *r)
{
    t_class *c;
    
    c = class_new("o.expr.file", (method)oexprfile_new, (method)oexprfile_free, (long)sizeof(t_oexprfile),
                  0L, A_GIMME, 0);
    
    class_addmethod(c, (method)oexprfile_fullPacket,    "FullPacket", A_GIMME, 0);
    class_addmethod(c, (method)oexprfile_read,          "read",        A_DEFSYM, 0);
    class_addmethod(c, (method)oexprfile_dblclick,      "dblclick",    A_CANT, 0);
    class_addmethod(c, (method)oexprfile_edclose,       "edclose",    A_CANT, 0);
    class_addmethod(c, (method)oexprfile_bang,          "bang", 0);
    class_addmethod(c, (method)oexprfile_filechanged,   "filechanged", A_CANT, 0);


    class_register(CLASS_BOX, c);
    oexprfile_class = c;
    
    osc_error_setHandler(omax_util_liboErrorHandler);

}
