#pragma once

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"

#include "osc.h"
#include "osc_expr.h"
#include "osc_expr_parser.h"

#include <string>

t_class *oexpr_file_handler_class;

typedef struct _oexpr_file_handler
{
    t_object ob;
    t_object *t_editor;
    char **t_text;
    long t_size;
    
    t_osc_expr *expr;
    t_critical lock;
    void *filewatcher;
    
    char filename[MAX_PATH_CHARS];
    char path_file[MAX_PATH_CHARS];
} t_oexpr_file_handler;


void *oexpr_file_handler_new(t_symbol *s);

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
