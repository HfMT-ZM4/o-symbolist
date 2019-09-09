

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"

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

#define OEXPR_MAX_FILES 128

t_class *oexprfile_class;
t_class *oexpr_file_proc_class;

typedef struct _oexpr_file_proc
{
    t_object ob;
    
    t_object * ref_obj;
    
    int instance_num;
    
    char **t_text; // handle for crossplatform text file data
    long t_size;
    
    t_osc_expr *expr;
    void *filewatcher;
    
    t_symbol *filename;
    
    char path_file[MAX_PATH_CHARS];
    
    t_critical lock;
    bool softlock;
    
} t_oexpr_file_proc;


void oexprfile_updateStatus_cb(t_object * x_obj);

int oexprfile_proc_liboErrorHandler(void *context, const char * const errorstr)
{
    object_error((t_object*)context, "(%s): %s", ((t_oexpr_file_proc *)context)->filename->s_name, errorstr);
    return 0;
}

int oexpr_file_proc_eval(t_oexpr_file_proc *x, long *len, char **ptr)
{
    int ret = 0;

    critical_enter(x->lock);
    
    t_osc_expr *f = x->expr;
    if(!f){
        //t_osc_atom_ar_u *av = NULL;
        //osc_expr_evalLexExprsInBndl(&copylen, &copy, &av);
    } else {
        while(f)
        {
            t_osc_atom_ar_u *av = NULL;
            ret = osc_expr_eval(f, len, ptr, &av, x);
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
    return ret;
    
}


void oexpr_file_proc_parseText(t_oexpr_file_proc *x)
{
    critical_enter(x->lock);
    if(x->expr){
        osc_expr_free(x->expr);
        x->expr = NULL;
    }
    
    if(x->t_size == 0 || !x->t_text ){
        critical_exit(x->lock);
        object_error((t_object *)x->ref_obj, "no text");
        oexprfile_updateStatus_cb(x->ref_obj);
        return;
    }
    

    t_osc_err err = osc_expr_parser_parseExpr(*x->t_text, &(x->expr), x);
    
    if( err != OSC_ERR_NONE )
    {
        if(x->expr) {
            osc_expr_free(x->expr);
        }
        
        x->expr = NULL;
    }
    
    critical_exit(x->lock);
    
    oexprfile_updateStatus_cb(x->ref_obj);

}

void oexpr_file_proc_procFile(t_oexpr_file_proc *x, char *filename, short path)
{
    t_filehandle fh;
    long err = path_opensysfile(filename, path, &fh, READ_PERM);
    if (!err)
    {
        t_handle textData = sysmem_newhandle(0);
        sysfile_readtextfile(fh, textData, 0, (t_sysfile_text_flags)(TEXT_LB_UNIX | TEXT_NULL_TERMINATE));
        sysfile_close(fh);
        
        if( textData )
        {
            critical_enter(x->lock);
            
            if (x->t_text)
                sysmem_freehandle(x->t_text);
            
            x->t_size = sysmem_handlesize(textData);
            
            x->t_text = sysmem_newhandleclear(x->t_size+1);
            sysmem_copyptr((char *)*textData, *x->t_text, x->t_size);
            
            if( x->filewatcher ){
                filewatcher_stop(x->filewatcher);
                object_free(x->filewatcher);
            }
            
            x->filewatcher = filewatcher_new((t_object *)x, path, filename);
            if(x->filewatcher)
                filewatcher_start(x->filewatcher);
            
            oexpr_file_proc_parseText(x);
            
            critical_exit(x->lock);
            
            sysmem_freehandle(textData);
        }
        
        
       
        
    }
    else
    {
        object_error((t_object *)x->ref_obj, "failed to load %s", filename);
    }
}


void oexpr_file_proc_doread(t_oexpr_file_proc *x, t_symbol *s, long argc, t_atom *argv)
{
    char filename[MAX_PATH_CHARS];
    short path;
    t_fourcc type = FOUR_CHAR_CODE('TEXT');
    
    strcpy(filename, s->s_name);
    
    if (locatefile_extended(filename, &path, &type, &type, 1)) {
        object_error((t_object *)x, "can't find file %s",filename);
        return;
    }

    char fullPath[MAX_PATH_CHARS], fullPathNative[MAX_PATH_CHARS];
    path_topathname(path, filename, fullPath);
    path_nameconform(fullPath, fullPathNative, PATH_STYLE_SLASH, PATH_TYPE_BOOT);
    
    critical_enter(x->lock);
    memset(x->path_file, '\0', MAX_PATH_CHARS);
    strncpy(x->path_file, fullPathNative, MAX_PATH_CHARS);
    critical_exit(x->lock);
    
    oexpr_file_proc_procFile(x, filename, path);
}


void oexpr_file_proc_read(t_oexpr_file_proc *x)
{
    defer((t_object *)x, (method)oexpr_file_proc_doread, x->filename, 0, NULL);
}

void oexpr_file_proc_filechanged(t_oexpr_file_proc *x, char *filename, short path)
{
    sysmem_resizehandle(x->t_text, 0);
    if(x->expr){
        osc_expr_free(x->expr);
        x->expr = NULL;
    }
    // defer?
    oexpr_file_proc_procFile(x, filename, path);
}


void oexpr_file_proc_free(t_oexpr_file_proc *x)
{
    critical_enter(x->lock);
    if (x->t_text)
        sysmem_freehandle(x->t_text);
    
    if(x->expr){
        osc_expr_free(x->expr);
    }
    
    if( x->filewatcher ){
        filewatcher_stop(x->filewatcher);
        object_free(x->filewatcher);
    }
    critical_exit(x->lock);
    
    critical_free(x->lock);
   
}

void *oexpr_file_proc_new(t_object *ref_obj, int instance_num, t_symbol *filename)
{
    t_oexpr_file_proc *x = NULL;
    
    if((x = (t_oexpr_file_proc *)object_alloc(oexpr_file_proc_class)))
    {
        critical_new(&x->lock);
        x->softlock = false;
        
        x->expr = NULL;
        
        x->filename = filename;
        
        x->t_text = sysmem_newhandle(0);
        x->t_size = 0;
        x->filewatcher = NULL;
        
        x->ref_obj = ref_obj;
        x->instance_num = instance_num;
        
    }
    
    return x;
}


// --- MAX INTERFACE ---

typedef struct _oexprfile
{
    t_object ob;
    
    t_oexpr_file_proc **files;
    long nfiles;
    
    bool allFilesAreValid;
    
    t_critical lock0;

    void *outlets[3];
} t_oexprfile;



void oexprfile_read(t_oexprfile *x, t_symbol *msg, long argc, t_atom *argv)
{
    critical_enter(x->lock0);
    for(int i = 0; i < x->nfiles; i++)
    {
        oexpr_file_proc_free( x->files[i] );
        object_free(x->files[i]);
        x->files[i] = NULL;
    }

    x->nfiles = (argc > OEXPR_MAX_FILES ? OEXPR_MAX_FILES : argc);
    
    for (int i = 0; i < x->nfiles; i++)
    {
        x->files[i] = (t_oexpr_file_proc *)oexpr_file_proc_new( (t_object *)x, i, atom_getsym(argv+i) );
    }
    critical_exit(x->lock0);

    
    for (int i = 0; i < x->nfiles; i++)
    {
        if( atom_gettype(argv+i) == A_SYM )
        {
            oexpr_file_proc_read(x->files[i]);
        }
    }
    
}



void oexprfile_updateStatus_cb(t_object * x_obj)
{
   
    t_oexprfile *x = (t_oexprfile *)x_obj;
    
    t_osc_bndl_u * bndl = osc_bundle_u_alloc();
    t_osc_msg_u * msg = osc_message_u_allocWithAddress("/file");

    int n_valid_files = 0;
    
    if( bndl && msg )
    {
        critical_enter(x->lock0);
        for( int i = 0; i < x->nfiles; i++ )
        {
            t_osc_bndl_u * status_bundle = osc_bundle_u_alloc();
            
            if( status_bundle )
            {
                t_osc_msg_u * name_msg = osc_message_u_allocWithAddress("/name");
                osc_message_u_appendString( name_msg, x->files[i]->filename->s_name );
                osc_bundle_u_addMsg(status_bundle, name_msg);
                
                t_osc_msg_u * status_msg = osc_message_u_allocWithAddress("/status");
                if( x->files[i]->expr )
                {
                    osc_message_u_appendString(status_msg, "loaded");
                    n_valid_files++;
                }
                else
                {
                    osc_message_u_appendString(status_msg, "error loading or parsing file");
                }
                
                osc_bundle_u_addMsg(status_bundle, status_msg);
                
                osc_message_u_appendBndl_u(msg, status_bundle);
            }
            
        }
        
        x->allFilesAreValid = (n_valid_files == x->nfiles);
        critical_exit(x->lock0);
        
        t_osc_msg_u * valid_msg = osc_message_u_allocWithAddress("/file/allFilesLoaded");
        osc_message_u_appendBool(valid_msg, x->allFilesAreValid );
        
        osc_bundle_u_addMsg(bndl, valid_msg);
        osc_bundle_u_addMsg(bndl, msg);

        t_osc_bndl_s * s_bndl = osc_bundle_u_serialize(bndl);
        
        if( s_bndl )
        {
            omax_util_outletOSC(x->outlets[1], osc_bundle_s_getLen(s_bndl), osc_bundle_s_getPtr(s_bndl));
            osc_bundle_s_deepFree(s_bndl);
        }
        
        osc_bundle_u_free(bndl);
    }
   
}

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
    
    critical_enter(x->lock0);
    for( int i = 0; i < x->nfiles; i++)
    {
        ret = oexpr_file_proc_eval(x->files[i], &copylen, &copy);
    }
    critical_exit(x->lock0);

    if(ret){
        omax_util_outletOSC(x->outlets[1], len, ptr);
    }else{
        omax_util_outletOSC(x->outlets[0], copylen, copy);
    }
    
    if(copy){
        osc_mem_free(copy);
    }
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


void oexprfile_free(t_oexprfile *x)
{
    for( int i = 0; i < x->nfiles; i++ )
    {
        oexpr_file_proc_free(x->files[i]);
        object_free(x->files[i]);
        x->files[i] = NULL;
    }
    
    free(x->files);
    x->files = NULL;
    
    critical_free(x->lock0);
}

void *oexprfile_new(t_symbol *s, long argc, t_atom *argv)
{
    t_oexprfile *x = NULL;
    
    x = (t_oexprfile *)object_alloc(oexprfile_class);
    if( x )
    {
        x->files = (t_oexpr_file_proc **)calloc(OEXPR_MAX_FILES, sizeof(t_oexpr_file_proc *));
        
        x->nfiles = 0;
        x->allFilesAreValid = 0;
        
        critical_new(&x->lock0);
        
        x->outlets[2] = outlet_new((t_object *)x, "FullPacket");
        x->outlets[1] = outlet_new((t_object *)x, "FullPacket");
        x->outlets[0] = outlet_new((t_object *)x, "FullPacket");

        
        oexprfile_read(x, NULL, argc, argv);
        
    }
    
    
    return x;
}

void ext_main(void *r)
{
    t_class *c;
    
    c = class_new("o.expr.file", (method)oexprfile_new, (method)oexprfile_free, (long)sizeof(t_oexprfile),
                  0L, A_GIMME, 0);
    
    class_addmethod(c, (method)oexprfile_fullPacket,    "FullPacket", A_GIMME, 0);
    class_addmethod(c, (method)oexprfile_read,          "read",       A_GIMME, 0);
    class_addmethod(c, (method)oexprfile_bang,          "bang", 0);
// dict

    t_class *bufpxy = class_new("expr_file_ref", NULL, NULL, sizeof(t_oexpr_file_proc), 0L, 0);
    class_addmethod(bufpxy, (method)oexpr_file_proc_filechanged, "filechanged",    A_CANT, 0);
    class_register(CLASS_NOBOX, bufpxy);
    oexpr_file_proc_class = bufpxy;

    
    class_register(CLASS_BOX, c);
    oexprfile_class = c;
    
    osc_error_setHandler(oexprfile_proc_liboErrorHandler);

}
