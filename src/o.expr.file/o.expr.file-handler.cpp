
#include "o.expr.file-handler.hpp"

void *oexpr_file_hanlder_new(t_symbol *s)
{
    
    t_oexpr_file_handler *x = NULL;
    
    if((x = (t_oexpr_file_handler *)object_alloc(oexpr_file_handler_class)))
    {
        x->name = s;
        x->ref = buffer_ref_new((t_object *)x, x->name);
        x->buffer_modified = true;
    }
    
    return x;
}


void oexprfile_parseText(t_oexpr_file_handler *x)
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
