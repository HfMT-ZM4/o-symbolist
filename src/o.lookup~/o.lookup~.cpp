
/*

 to do:
    1) make mc version that outputs "tracks" for values of /y?
        e.g.
    {
        /x : [1,2,3,4,5,6],
        /y/1 : [.....],
        /y/2 : [.....],
        /y/3 : [.....],
        /y/4 : [.....]
    }
    
 this can also kind of be done with mc.index~ connected to the step output,
 but for curves you might need something like that.
 
    I think maybe it's kind of nice to do it this way in o.lookup, since then maybe later we could also support interp, curves etc.
 
 true::: another option would be to write into a buffer wih a given sample rate
 the issue there is that it takes longer to write every sample
 
    2) add queue feature to output events if they get skipped
        for example, if there is a very short note and the phrase is played quickly
        probalby we don't want to skip the note
        so that means delaying the current event sample, and playing the values as quick as possible
            i guess with the maximum phase
        so we would need a queue stack that gets added to and emptied as fast as possible
 
        related, if two events are at the same x time, offset one of them by the lowest possible
            or allow them to be doubled but use the queue stack and output as fast as possible
            points that coincide in time of course can't be interpolated between, so no problem there,
            but not sure how the sorting function will deal with that.
                ok, the sort function appears to use the order that it finds them in,
                so if there are two points with the same x, which ever arrives first will be output first
 
    one solution could be to iterate the indexes skipped afterr doing the sequential lookup
    in that case, no interpolation is possible,
        so the phase output for each queue point should be 0
        busy 1
        index number as usual
 
        so basically we would need to do something like this:
 *interp_val_out++ = y_val;
 *rel_phase_out++ = phase;
 *index_out++ = idx;
 *delta_out++ = delta;
 *npoints_out++ = points_len;
 
 and then we need to deal with the case that if inputs come at the end of the vector, we would need to then delay the buffer of incoming samples
 
 @queue 0 = no queue, output the first value if duplicated
 @queue 1 = create queue for synchronized events
 @queue 2 = create queue for synchronized events, plus any skipped events since previous phase point
 
 
 a couple problems that have come up:
 1- if an event is over the boundary of the vector, it needs a queue to go into the next vector, which could eventually lead to greater delays
 2- if the input signal is a ramp, then it is always changing then the input must always be considered, so if the inlets signals are queued, there is no way to make up
    for the missing time difference, espeicialy with interpolation, but anyway this is not working well
 
 an alternative approach which is maybe more stable would be to auto spread synchronous events so that events are never synchronous
 
 then the queue mode would be just for case 2 to accumulate skipped steps
    so then if we iterate quickly what happens to the missing inlet values?
    I guess it would be reasonable to say that you loose the input values
            working pretty well
 
 ok new plan:
 
 @seq 0     optimize for random access search (binary)
 @seq 1     optimize for forward reading, and accumulation (only in upwards direction)
 @seq -1    optiimize for backwards reading, and accumulation (only in reverse direction)
 @seq 2     optimize for playhead style reading, and accumulation (both directions)
 
 @accum 0 - off
 @accum 1 - accum based on seq direction
 
 
 
 
 old notes
format no longer supported : use o.explode if you need to work like this
{
    /0/x : [],
    /0/y : [],
    /1/x : [],
    /1/y : []
}


format 1:
{
    /x : [],
    /y : []
}

 format option 2b:
 
 {
    /x
    /y
    /index
 }
 

format 2:
if /y is not found in the top level, o.lookup~ will assume that you have a set of subbundles containing phrases of points bound together -- and then look for subbundles that contain /y.
In this format, the names of the bundles are converted to integers and used for lookup -- if you skip numbers in the sequence, it will add slots inbetween the missing indexes -- this makes it possible to insert new phrases without setting the whole set of phrases from scratch, but will have a little overhead if you use very large gaps between your indexes, so it's recommended to keep them sequential, starting from 0.

{
    /0 : {
        /x : [1, 2, 3],
        /y : [0., 0.1, 1]
    },
    /1 : {
        /x : [1, 2, 3],
        /y : [10., 10.1, 11]
    }
}
 
 
 format 4 removed:
  update:: assuming is bad -- let's only support format /1 : { /x : 1, /y : 2 } for indexed phrases
  
 if /x, /y, /c are subbundles, the subbundle addresses are assumed to be phrases
 the order of the phrases in the bundle is used to set the order of the phrases - that means that it doesn't matter if the numbers don't match, however, it is a potential source of confusion, so be careful!

 {
     /x : {
         /11 : [1, 2, 3],
         /111 : [0., 0.1, 1]
     },
     /y : {
         /0 : [1, 2, 3],
         /1 : [10., 10.1, 11]
     }
 }

 if there are fewer x than y or visa versa, o.lookup~ will repeat the list from the previous values.
 this can be useful if you want to vary one or other other parameters for a set sequence of points.

 {
     /x : {
         /0 : [1, 2, 3],
     },
     /y : {
         /0 : [1, 2, 3],
         /1 : [10., 10.1, 11]
     }
 }


 the /x values are also optional, you can just send a list of points in and the x values will be generated as indexes starting from 0

 {
     /y : {
         /0 : [1, 2, 3],
         /1 : [10., 10.1, 11]
     }
 }


*/

#define NAME "o.lookup~"
#define DESCRIPTION ""
#define AUTHORS "Rama Gottfried"
#define COPYRIGHT_YEARS "2018"

#include "o.lookup~.hpp"
#include <queue>

using namespace std;

static t_class *olookup_class;

typedef struct _olookup {
    t_pxobject  ob;
    
    vector< PhasePoints > phrase;
    
    // sample and hold values if phase doesn't change
    double      cur_phase;
    vector<double>      val; // for mc version this needs to be a vector of the num ouputs
    double      rel_phase;
    t_int       index;
    t_int       upper_idx;
    double      delta_between_points;
    t_int       phrase_len;
    
    size_t      phrase_index;
    
    bool        update = true;

    
    queue< pair<t_int, t_int> >  out_idx_queue;

    // attrs
    long        phaseincr;
    long        phasewrap;
    long        normal_x;
    long        interp;
    long        tie_repeats;

    long        seq;
    long        accum;
    
    short       connected[2];
    
    void*       osc_outlet;
    long        osc_inlet;
    t_proxy     proxy;
    t_critical  lock;
    
    long        numoutputs;
    
} t_olookup;


struct oPointSet
{
    vector<t_osc_msg_u *> _x, _y, _c, _dur, _other;
    size_t x_free = 0, y_free = 0, c_free = 0, d_free = 0, o_free = 0;

    void release()
    {
        for( size_t i = 0; i < x_free; ++i )
            osc_message_u_free(_x[i]);
        
        for( size_t i = 0; i < y_free; ++i )
            osc_message_u_free(_y[i]);
        
        for( size_t i = 0; i < c_free; ++i )
            osc_message_u_free(_c[i]);
        
        for( size_t i = 0; i < d_free; ++i )
            osc_message_u_free(_dur[i]);
        
        for( size_t i = 0; i < o_free; ++i )
            osc_message_u_free(_other[i]);
        
        x_free = 0; y_free = 0; c_free = 0; d_free = 0; o_free = 0;
        _x.clear(); _y.clear(); _c.clear(); _dur.clear(); _other.clear();
    }
    
    void release_xycd()
    {
        for( size_t i = 0; i < x_free; ++i )
            osc_message_u_free(_x[i]);
        
        for( size_t i = 0; i < y_free; ++i )
            osc_message_u_free(_y[i]);
        
        for( size_t i = 0; i < c_free; ++i )
            osc_message_u_free(_c[i]);
        
        for( size_t i = 0; i < d_free; ++i )
            osc_message_u_free(_dur[i]);
        
        x_free = 0; y_free = 0; c_free = 0; d_free = 0;
        _x.clear(); _y.clear(); _c.clear(); _dur.clear();
        
    }
};

/*

void olookup_expandToMatch2(vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y)
{
    size_t nx = _x.size();
    size_t ny = _y.size();
    
    if( nx != ny )
    {
        if( nx > ny )
        {
            // duplicate y to match x
            for( size_t i = ny-1; i < nx; ++i)
            {
                _y.emplace_back( _y[ny-1] );
            }
            
        }
        else
        {
            // duplicate x to match y
            for( size_t i = nx-1; i < ny; ++i)
            {
                _x.emplace_back( _x[nx-1] );
            }
        }
    }
}

void olookup_expandToMatch3(vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y, vector<t_osc_msg_u*>& _c)
{
    size_t nx = _x.size();
    size_t ny = _y.size();
    size_t nc = _c.size();

    if( nx != ny )
    {
        if( nx > ny )
        {
            // duplicate y to match x
            t_osc_msg_u * repeat = _y.back();
            for( size_t i = ny-1; i < nx; ++i)
            {
                _y.emplace_back( repeat );
            }
            
        }
        else
        {
            // duplicate x to match y
            t_osc_msg_u * repeat =_x.back();
            for( size_t i = nx-1; i < ny; ++i)
            {
                _x.emplace_back( repeat );
            }
        }
    }
    
    if( nx != nc )
    {
        if( nx > nc )
        {
            // duplicate c to match x/y
            t_osc_msg_u * repeat = _c.back();
            for( size_t i = nc-1; i < nx; ++i)
            {
                _c.emplace_back( repeat );
            }
            
        }
        else
        {
            // duplicate xy to match c
            t_osc_msg_u * repeatx =_x.back();
            t_osc_msg_u * repeaty =_y.back();

            for( size_t i = nx-1; i < nc; ++i)
            {
                _x.emplace_back( repeatx );
                _y.emplace_back( repeaty );
            }
        }
    }
}
*/
bool olookup_parse_messages(t_olookup *x, vector<PhasePoints>& out_vec, oPointSet& p, int index = -1)
{

    size_t nx = p._x.size();
    size_t ny = p._y.size();
    size_t ndur = p._dur.size();

    if( !ny || (!nx && !ndur) )
        return false;
    
    
    bool genX = !nx && ndur ;
    
    /*
    if( genX )
    {
        // gen x from duration

        if( !p._c.size() )
            olookup_expandToMatch2(p._dur, p._y);
        else
            olookup_expandToMatch3(p._dur, p._y, p._c);
        
    }
    else
    {
        if( !p._c.size() )
            olookup_expandToMatch2(p._x, p._y);
        else
            olookup_expandToMatch3(p._x, p._y, p._c);
    }
    */
    
    for( size_t i = 0; i < p._y.size(); ++i)
    {
        PhasePoints new_phrase;
        
        new_phrase.parseMsg((char *)"/y", p._y[i], (t_object *)x );
        
        if( genX )
            new_phrase.parseDurMsg( p._dur[i], (t_object *)x );
        else
            new_phrase.parseMsg((char *)"/x", p._x[i], (t_object *)x );
        
        // note: c needs to be after x in case we are in duration mode, which adds a zero as the first curve
        if( i < p._c.size() )
        {
            new_phrase.parseMsg((char *)"/c", p._c[i], (t_object *)x );
        }
        
        
        if( new_phrase.init() )
        {
            if( index == -1 )
                out_vec.emplace_back( new_phrase );
            else
            {
                if( index >= out_vec.size() ){
                    out_vec.resize(index+1);
                }
                
                out_vec[index] = new_phrase;
                
            }
        }
        else
        {
            return false;
        }
        
    }
  

    return true;

}


bool olookup_parse_mc_phrase(t_olookup *x, vector<PhasePoints>& new_vec, oPointSet& p)
{
    int index = -1;
    
    for( auto& m : p._other )
    {
        
        /**
         for mc phrases, x and c lists should already be present
         */
        
        oPointSet op;
        string bundle_addr = osc_message_u_getAddress(m);
        
        if( bundle_addr.find_first_of("/y") == 0 )
        {
            cout << bundle_addr << endl;
        }
        
        bundle_addr = bundle_addr.substr(3);
        
        try
        {
            index = stoi(bundle_addr);
            cout << index << endl;
        }
        catch (std::exception& e)
        {
            object_error((t_object *)x, "indexed address could not be converted to int.");
            return false;
        }
        
        //if( index >= 0 && index < new_vec.... )
    
        //  maybe better to check for /y/0 - /y/n in basic loop, and then add support for this with multiple phrases
        
    
        auto at = osc_message_u_getArg(m, 0);
        
        if( osc_atom_u_getTypetag( at ) != OSC_BUNDLE_TYPETAG )
            return false;
        
        auto b = osc_atom_u_getBndl( at );
        auto it = osc_bndl_it_u_get(b);
        while(osc_bndl_it_u_hasNext(it))
        {
            t_osc_msg_u *m = osc_bndl_it_u_next(it);
            const string addr = osc_message_u_getAddress(m);
            
            if( addr == "/x" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._x.emplace_back( copy );
                op.x_free = op._x.size();
            }
            else if (  addr == "/y" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._y.emplace_back( copy );
                op.y_free = op._y.size();
            }
            else if ( addr == "/c" || addr == "/curve" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._c.emplace_back( copy );
                op.c_free = op._c.size();
            }
            else if ( addr == "/dur" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._dur.emplace_back( copy );
                op.d_free = op._dur.size();
                
            }
            else
            {
               // otherwise not valid
            }
            
        }
        osc_bndl_it_u_destroy(it);
    
        if( op._y.size() && (op._dur.size() || op._x.size()) )
        {
            olookup_parse_messages( x, new_vec, op, index );
        }
        else
        {
            object_error((t_object *)x, "mis-matched list lengths for phrase %ld", index);
        }
        
        op.release();
    }
    
    
    
    /*
     critical_enter(x->lock);
     
     if( i < x->phrase.size() )
     x->phrase[i] = new_phrase;
     else
     x->phrase.emplace_back( new_phrase );
     
     x->update = true;
     
     critical_exit(x->lock);
     */
    return new_vec.size() > 0;
    
}


bool olookup_indexed_phrase(t_olookup *x, vector<PhasePoints>& new_vec, oPointSet& p)
{
    int index = -1;
    
    for( auto& m : p._other )
    {
        
        oPointSet op;
        string bundle_addr = osc_message_u_getAddress(m);
        bundle_addr = bundle_addr.substr(1);
        
        try
        {
            index = stoi(bundle_addr);
        }
        catch (std::exception& e)
        {
            object_error((t_object *)x, "indexed address could not be converted to int.");
            return false;
        }
        
        auto at = osc_message_u_getArg(m, 0);
        
        if( osc_atom_u_getTypetag( at ) != OSC_BUNDLE_TYPETAG )
            return false;
        
        auto b = osc_atom_u_getBndl( at );
        auto it = osc_bndl_it_u_get(b);
        while(osc_bndl_it_u_hasNext(it))
        {
            t_osc_msg_u *m = osc_bndl_it_u_next(it);
            const string addr = osc_message_u_getAddress(m);
            
            if( addr == "/x" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._x.emplace_back( copy );
                op.x_free = op._x.size();
            }
            else if (  addr == "/y" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._y.emplace_back( copy );
                op.y_free = op._y.size();
            }
            else if ( addr == "/c" || addr == "/curve" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._c.emplace_back( copy );
                op.c_free = op._c.size();
            }
            else if ( addr == "/dur" )
            {
                t_osc_msg_u * copy = NULL;
                osc_message_u_deepCopy(&copy, m);
                op._dur.emplace_back( copy );
                op.d_free = op._dur.size();
                
            }
            else
            {
               // otherwise not valid
            }
            
        }
        osc_bndl_it_u_destroy(it);
    
        if( op._y.size() && (op._dur.size() || op._x.size()) )
        {
            olookup_parse_messages( x, new_vec, op, index );
        }
        else
        {
            object_error((t_object *)x, "mis-matched list lengths for phrase %ld", index);
        }
        
        op.release();
    }
    
    
    
    /*
     critical_enter(x->lock);
     
     if( i < x->phrase.size() )
     x->phrase[i] = new_phrase;
     else
     x->phrase.emplace_back( new_phrase );
     
     x->update = true;
     
     critical_exit(x->lock);
     */
    return new_vec.size() > 0;
    
}

void olookup_process_msg(t_olookup *x, t_osc_msg_s *m, vector<t_osc_msg_u*>& vec)
{
    t_osc_atom_s *at = NULL;
    osc_message_s_getArg(m, 0, &at);
    if( at )
    {
        if(  osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
        {
            /*
            t_osc_bndl_s *sub = osc_atom_s_getBndl(at);
            auto itsub = osc_bndl_it_s_get(osc_bundle_s_getLen(sub), osc_bundle_s_getPtr(sub));
            while(osc_bndl_it_s_hasNext(itsub))
            {
                vec.emplace_back(osc_message_s_deserialize(osc_bndl_it_s_next(itsub)));
                
            }
            osc_bndl_it_s_destroy(itsub);
            
            osc_bundle_s_free(sub);
             */
            object_error((t_object *)x,"found bundle at %s, must be a list only", osc_message_s_getAddress(m));

        }
        else
        {
            vec.emplace_back(osc_message_s_deserialize(m));
        }
        
        osc_mem_free(at);
    }
}


void olookup_FullPacket(t_olookup *x, t_symbol *s, long argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    
    // ======================= wrap_naked_osc
    // from wrap_naked... alloca was a problem in C++
    if(ptr && len >= 8){
        if(strncmp("#bundle\0", (char *)(ptr), 8)){
            char *oldptr = (char *)ptr;
            long oldlen = len;
            len += 4 + OSC_HEADER_SIZE;
            ptr = (char *)alloca(len);
            char alloc = 0;
            osc_bundle_s_wrapMessage(oldlen, oldptr, &len, (char **)(&ptr), &alloc);
        }
    }
    
    if(len == OSC_HEADER_SIZE){
        return;
    }
    // ==========================
    
    
    oPointSet p;
    int index = -1;
    
    auto it = osc_bndl_it_s_get(len, ptr);
    while(osc_bndl_it_s_hasNext(it))
    {
        t_osc_msg_s *m = osc_bndl_it_s_next(it);
        const string addr = osc_message_s_getAddress(m);
        
        if( addr == "/x" )
        {
            olookup_process_msg(x, m, p._x);
            p.x_free = p._x.size();
        }
        else if (  addr == "/y" )
        {
            olookup_process_msg(x, m, p._y);
            p.y_free = p._y.size();
        }
        else if( addr.find("/y/") != string::npos )
        {
            
            string parseIdx = addr.substr(3);
            try
            {
                index = stoi(parseIdx);
                // << log into
                cout << index << endl;
                
            }
            catch (std::exception& e)
            {
                ;
            }
            
        }
        else if ( addr == "/c" || addr == "/curve" )
        {
            olookup_process_msg(x, m, p._c);
            p.c_free = p._c.size();
        }
        else if ( addr == "/dur" )
        {
            olookup_process_msg(x, m, p._dur);
            p.d_free = p._dur.size();

        }
        else
        {
            t_osc_atom_s *at = NULL;
            osc_message_s_getArg(m, 0, &at);
            if( at )
            {
               if( osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
               {
                    p._other.emplace_back( osc_message_s_deserialize(m) );
               }
                
                osc_mem_free(at);
            }
        }
        
    }
    osc_bndl_it_s_destroy(it);

    p.o_free = p._other.size();
   
    vector<PhasePoints> new_vec;
    
    bool parsed = olookup_parse_messages(x, new_vec, p, index);
    
    if( !parsed && p._other.size() )
    {
        parsed = olookup_indexed_phrase(x, new_vec, p);
        if( !parsed )
        {
            ;// parsed = olookup_parse_mc_phrase(x, new_vec, p);
        }
        // error?
    }
    else
    {
        // put some kind of error here?
    }

    if( !parsed )
    {
        object_error((t_object *)x, "parse error -- valid count: x %ld, dur %ld, y %ld", p._x.size(), p._dur.size(), p._y.size() );
        return;
    }
    
    critical_enter(x->lock);
    x->phrase = new_vec;
    x->update = true;
    critical_exit(x->lock);
    
    
//    post("interp %i norm %i", x->interp, x->normal_x);
    
    omax_util_outletOSC(x->osc_outlet, len, ptr);
    
    p.release();
    
}


void olookup_search_sequential(const vector< double >& x_phrase, const long& points_len, const double& in_phase,
                               t_int& idx, t_int& idx1, double& x0, double& x1 )
{

    long max_idx1 = points_len - 1; // max upper bound
    long max_idx0 = points_len - 2; // max lower bound

    idx =  CLAMP(idx,  0, max_idx0);
    idx1 = CLAMP(idx1, 1, max_idx1);

    // current segment start/end
    x0 = x_phrase[idx];
    x1 = x_phrase[idx1];
    
     // sequential lookup for indexes
     if( in_phase < x0 )
     {
         while( in_phase < x0 && idx-- > 0 )
         {
             x0 = x_phrase[ idx ];
         }
         idx =  CLAMP(idx,   0, max_idx0);
         idx1 = CLAMP(idx+1, 1, max_idx1);
         
         if( in_phase < x0 && idx <= 0 )
             x1 = x0;
         else
             x1 = x_phrase[ idx1 ];
         
     }
     else if( in_phase >= x1 )
     {
         while( in_phase >= x1 && idx1++ < max_idx1 )
         {
             x1 = x_phrase[ idx1 ];
         }
         
         idx  = CLAMP(idx1-1, 0, max_idx0);
         idx1 = CLAMP(idx1,   1, max_idx1);

         if( in_phase > x1 && idx >= points_len )
             x0 = x1;
         else
             x0 = x_phrase[ idx ];
     }
    // else idx1 should be the same as before

}

void olookup_search_binary(const vector< double >& x_phrase, const long& points_len, const double& in_phase, t_int& idx, t_int& idx1, double& x0, double& x1 )
{
    auto it = std::lower_bound(x_phrase.begin(), x_phrase.end(), in_phase);
    if( it == x_phrase.end() )
    {
        idx = points_len - 2;
        idx1 = points_len - 1;
        x0 = x_phrase[idx1];
        x1 = x0;
    }
        
    idx1 = it - x_phrase.begin(); // first element *not lower* than search value
    idx = CLAMP(idx1-1, 0, points_len - 2);
    idx1 = CLAMP(idx1, 1, points_len - 1);
    
    x1 = (*it);
    x0 = x_phrase[idx];
}


void olookup_perform64(t_olookup *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
    t_double *phase_in = ins[0];
    t_double *index_in = ins[1];

    const size_t mc_outs = x->numoutputs;
    
    t_double **interp_val_out = outs; // for mc this needs to be an array of values, and offset the other outlets
    
    t_double *rel_phase_out = outs[mc_outs];
    t_double *index_out = outs[mc_outs+1];
    t_double *delta_out = outs[mc_outs+2];
    t_double *npoints_out = outs[mc_outs+3];

    critical_enter(x->lock);
    vector<PhasePoints> x_phrase = x->phrase;
    critical_exit(x->lock);

    long max_phr_idx = x_phrase.size() - 1;
    
    t_int in_idx;
    double x0 = 0, x1 = 0, y0 = 0, y1 = 0, range = 0, fp = 0, gp = 0;
    
    vector<double> y_val(mc_outs); // for mc this needs to be an array of values
    
    double in_phase = x->cur_phase, prev_inphase = x->cur_phase;
    double phase = x->rel_phase;
    
    t_int idx = x->index;
    t_int idx1 = x->upper_idx;
    t_int prev_idx = idx;
    
    t_int idx_delta = 0;
    
    double delta = x->delta_between_points;
    
    size_t phrase_index = x->phrase_index;
    
    t_int points_len = x->phrase_len;
    
    for ( size_t j = 0; j < sampleframes; j++)
    {
        if( max_phr_idx == -1 )
        {
            for( size_t n = 0; n < mc_outs; n++ )
                interp_val_out[n][j] = 0; // for mc this needs to be an array of values
            
            rel_phase_out[j] = 0;
            index_out[j] = 0;
            delta_out[j] = 0;
            npoints_out[j] = 0;
        }
        else
        {
            
            if( !x->out_idx_queue.empty() )
            {
                const auto& ptIdx_phraseIdx = x->out_idx_queue.front();
                size_t q_idx = ptIdx_phraseIdx.first;
                const auto& phr = x_phrase[ ptIdx_phraseIdx.second ];
                
                for( size_t n = 0; n < mc_outs; n++ )
                    interp_val_out[n][j] = phr.y[q_idx];
                
                rel_phase_out[j] = 0;
                index_out[j] = q_idx;
                delta_out[j] = phr.x[q_idx] - phr.x[q_idx + 1];
                npoints_out[j] = phr.x.size();
                
                x->out_idx_queue.pop();
                continue;
            }
               
                   
            in_phase =  x->connected[0] ?   phase_in[j] : 0;
            in_idx =    x->connected[1] ?   index_in[j] : 0;
        
                
            if( in_phase != prev_inphase || in_idx != phrase_index || x->update || x->phaseincr > 0  )
            {

                if( x->update )
                {
                    critical_enter(x->lock);
                    x_phrase = x->phrase;
                    x->update = false;
                    critical_exit(x->lock);
                    
                    max_phr_idx = x_phrase.size() - 1;

                }

                phrase_index = (size_t)in_idx; // (t_int)CLAMP( in_idx, 0, max_phr_idx );
                if( phrase_index < 0 || phrase_index > max_phr_idx )
                {
                    std::fill(y_val.begin(), y_val.end(), 0);
//                    y_val = 0;
                    phase = 0;
                    idx = 0;
                    delta = 0;
                    points_len = 0;

                }
                else
                {

                    PhasePoints& phr = x_phrase[phrase_index];
                    points_len = phr.len;
                    
                    if( points_len > 1 )
                    {
                        double maxphase = phr.x.back();

                        if( x->phaseincr == 1 )
                        {
                            in_phase = prev_inphase + in_phase;
                        }
                        
                        if( x->phasewrap == 1 )
                        {
                            in_phase = ( in_phase >= 0 ) ? fmod(in_phase, maxphase) : fmod(in_phase + maxphase, maxphase);
                        }
                                                    
                        // note: idx and idx1 are updated in the lookup functions
                        if( !x->seq )
                        {
                            olookup_search_binary(phr.x, points_len, in_phase, idx, idx1, x0, x1);
                        }
                        else
                        {
                            olookup_search_sequential(phr.x, points_len, in_phase, idx, idx1, x0, x1);
                            
                            if( x->accum )
                            {
                                //post("prev %ld new %ld", prev_idx, idx);
                                // if sequential queue mode case 2 (skipping case 1 for now)
                                // output all skipped values as quickly as possible and then continue
                                
                                idx_delta = idx - prev_idx;
                                if( idx_delta != 0 )
                                {
                                    int sign = idx_delta > 0 ? 1 : -1;
                                    
                                    if( x->seq == sign || x->seq == 2 )
                                    {
                                        idx_delta = abs(idx_delta) - 1;
                                        long idx_incr = prev_idx + sign;
                                        
                                        while (idx_delta--)
                                        {
                                            if( j < sampleframes )
                                            {
                                                // -- add for mc y here
                                                 for( size_t n = 0; n < mc_outs; n++ )
                                                   interp_val_out[n][j] = phr.y[idx_incr];
                                                
                                                rel_phase_out[j] = 0;
                                                index_out[j] = idx_incr;
                                                delta_out[j] = phr.x[idx_incr] - phr.x[idx_incr + 1];
                                                npoints_out[j] = points_len;
                                                j++;
                                            }
                                            else
                                            {
                                                x->out_idx_queue.emplace(idx_incr, phrase_index);
                                            }
                                           
                                            idx_incr += sign;
                                            
                                        }
                                    }
                                    
                                    
                                    if( j >= sampleframes )
                                    {
                                       // printf("nononono j %ld line %i!! \n", j, __LINE__ );
                                        break;
                                    }
                                        
                                    
                                }
                                
                                
                                prev_idx = idx;
                            }
                           
                        }
                       
                        
                        delta = x1 - x0;
                        
                        if( in_phase >= maxphase && x0 == x1 )
                        {
                            phase = 1;
                        }
                        else if( delta > 0 )
                        {
                            phase = (in_phase - x0) / delta;
                        }
                        else
                            phase = 0;
                        
                        //idx = CLAMP(idx, 0, max_idx0);
                        //idx1 = CLAMP(idx+1, 1, max_idx1);
                        
                        if( !x->interp )
                        {
                            // -- add for mc y here
                            for( size_t n = 0; n < mc_outs; n++ )
                                y_val[n] = phr.y[idx];
                        }
                        else
                        {
                            // -- add for mc y here for the whole block
                            for( size_t n = 0; n < mc_outs; n++ )
                            {
                                y0 = phr.y[idx];
                                y1 = phr.y[idx1];
                                range = y1-y0;
                                
                                if( !phr.c.size() )
                                    y_val[n] = y0 + phase*range;
                                else
                                {
                                    fp = phr.c[idx1]; // max's curve format uses the destination curve value coef
                                    if( fp == 0 )
                                        y_val[n] = y0 + phase*range;
                                    else
                                    {
                                        // note: first half of equation is precalculated in the PhasePoints setter
                                        gp = ( exp(fp * phase) - 1.) / ( exp(fp) - 1. ) ;
                                        y_val[n] = y0 + gp * range;
                                    }
                                }
                            }
                            
                        }
                    }
                    else
                    {
                        if( points_len == 1 )// one point case
                        {
                            for( size_t n = 0; n < mc_outs; n++ )
                            {
                                y_val[n] = phr.y[0];
                            }
                        }
                        else
                        {
                            for( size_t n = 0; n < mc_outs; n++ )
                            {
                                y_val[n] = 0;
                            }
                        }
                        
                        phase = 0;
                        idx = 0;
                        delta = 0;
                    }
                    
                }
            }

           // if( j >= sampleframes )
           //     printf("nononono j %ld line %i!! \n", j, __LINE__ );
            
            if( j < sampleframes ) // since the break was added above, I think this should never happen
            {
                for( size_t n = 0; n < mc_outs; n++ )
                    interp_val_out[n][j] = y_val[n];
                
                rel_phase_out[j] = phase;
                index_out[j] = idx;
                delta_out[j] = delta;
                npoints_out[j] = points_len;
            }
            else
            {
                printf("nononono j %ld line %i!! \n", j, __LINE__ );
            }
            
            prev_inphase = in_phase;
            
            
        }
        
    }
    /*
     // removing input queue, in favor of keeping in sync with input
     // outlet can be delayed in case of queue, but not the input
    while( i < sampleframes )
    {
        if( i < 0 )
           printf("niiiii i %ld line %i!! \n", i, __LINE__ );
        
        x->inlet_queue.emplace( phase_in[i], index_in[i] );
        i++;
    }
     
    */
    //if( x->inlet_queue.size() )
    //   printf("%ld queue\n", x->inlet_queue.size());

    x->val = y_val;
    x->rel_phase = phase;
    x->index = idx;
    x->upper_idx = idx1;
    x->phrase_len = points_len;
    x->delta_between_points = delta;
    x->cur_phase = in_phase;
    x->phrase_index = phrase_index;
    
    
}

void olookup_dsp64(t_olookup *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
    
    critical_enter(x->lock);
    
    x->connected[0] = count[0];
    x->connected[1] = count[1];
     
    // post("connected %i %i", x->connected[0], x->connected[1]);
    
    x->update = true;
    std::fill(x->val.begin(), x->val.end(), 0);
    //x->val = 0;
    x->rel_phase = 0;
    x->delta_between_points = 0;
    x->index = 0;
    x->upper_idx = 0;
    x->phrase_len = 0;
  //  x->cur_phase = 0;

    while (!x->out_idx_queue.empty())
        x->out_idx_queue.pop();
    
    critical_exit(x->lock);
    
    
    object_method(dsp64, gensym("dsp_add64"), x, olookup_perform64, 0, NULL);
}


void olookup_assist(t_olookup *x, void *b, long m, long a, char *s)
{
    if (m == ASSIST_INLET) { //inlet
        switch (a) {
            case 0:
                sprintf(s, "(signal) phase x axis lookup");
                break;
            case 1:
                sprintf(s, "(signal) phrase index lookup");
                break;
            case 2:
                sprintf(s, "(FullPacket) OSC input");
                break;
        }
    }
    else
    {	// outlet
        switch (a) {
            case 0:
                sprintf(s, "(signal) phrase value at lookup point");
                break;
            case 1:
                sprintf(s, "(signal) relative phase");
                break;
            case 2:
                sprintf(s, "(signal) step index");
                break;
            case 3:
                sprintf(s, "(signal) step delta (duration)");
                break;
            case 4:
                sprintf(s, "(signal) total steps in phrase");
                break;
            case 5:
                sprintf(s, "(FullPacket) OSC output");
                break;
            default:
                sprintf(s, "outlet %ld", a);
                break;
        }
    }
    
}

long olookup_multichanneloutputs(t_olookup *x, long outletindex)
{
    if( outletindex == 0)
        return x->numoutputs;
    else
        return 1;
}

t_max_err olookup_mc_set(t_olookup *x, t_object *attr, long argc, t_atom *argv)
{
    return 0;
}

t_max_err olookup_mc_get(t_olookup *x, t_object *attr, long *argc, t_atom **argv)
{
    char alloc;
    atom_alloc(argc, argv, &alloc);     // allocate return atom
    atom_setlong(*argv, x->numoutputs);
    return 0;
}


void olookup_free(t_olookup *x)
{
    dsp_free(&(x->ob));

    critical_free( x->lock );
    
    object_free(x->proxy);
    
}

void *olookup_new(t_symbol* s, short argc, t_atom* argv)
{
    t_olookup *x = (t_olookup *)object_alloc(olookup_class);
    if(x)
    {
        x->phrase.reserve(1);

       // x->val = 0;
        x->rel_phase = 0;
        x->delta_between_points = 0;
        x->index = 0;
        x->phrase_len = 0;
        x->cur_phase = 0;

        x->interp = 1;
        x->phaseincr = 0;
        x->phasewrap = 0;
        
        x->seq = 0;
        x->accum = 0;
        
        x->connected[0] = 0;
        x->connected[1] = 0;
        
        x->numoutputs = 1;
        
        attr_args_process(x, argc, argv);
        
        t_dictionary *dict = dictionary_new();
        attr_args_dictionary(dict, argc, argv);
        
        t_symbol * sym_mc_attr = gensym("mc");
        if( dictionary_hasentry(dict, sym_mc_attr ) )
        {
            t_atom_long val;
            dictionary_getlong(dict, sym_mc_attr, &val);
            x->numoutputs = val;
        }
        object_free(dict);
        
        x->val.resize(x->numoutputs);
        
        dsp_setup((t_pxobject *)x, 2);

        x->osc_outlet = outlet_new((t_object *)x, "FullPacket");

        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        if( x->numoutputs == 1 )
            outlet_new((t_object *)x, "signal");
        else{
            outlet_new((t_object *)x, "multichannelsignal"); // y output
        }
        
        x->proxy = proxy_new((t_object *)x, 1, &(x->osc_inlet));
        
        critical_new( &x->lock );
        
        x->ob.z_misc = Z_MC_INLETS ;//| Z_NO_INPLACE;
    

    }
    return (void *)x;
}

BEGIN_USING_C_LINKAGE
int C74_EXPORT main(void)
{
    
    t_class *c = class_new("o.lookup~", (method)olookup_new, (method)olookup_free, sizeof(t_olookup), 0L, A_GIMME, 0);
    
    class_addmethod(c, (method)olookup_dsp64,       "dsp64",        A_CANT,     0);
    class_addmethod(c, (method)olookup_assist,      "assist",       A_CANT,     0);
    class_addmethod(c, (method)olookup_FullPacket,  "FullPacket",	A_GIMME,    0);
    class_addmethod(c, (method)olookup_multichanneloutputs, "multichanneloutputs", A_CANT, 0);

    
    CLASS_ATTR_LONG(c, "mc", 0, t_olookup, numoutputs);
    CLASS_ATTR_ACCESSORS(c, "mc", olookup_mc_get, olookup_mc_set);

    CLASS_ATTR_LONG(c, "interp", 0, t_olookup, interp);
    CLASS_ATTR_STYLE_LABEL(c, "interp", 0, "onoff", "interpolation");

    CLASS_ATTR_LONG(c, "phasewrap", 0, t_olookup, phasewrap);
    CLASS_ATTR_STYLE_LABEL(c, "phasewrap", 0, "onoff", "phasewrap");
    
    CLASS_ATTR_LONG(c, "phaseincr", 0, t_olookup, phaseincr);
    CLASS_ATTR_STYLE_LABEL(c, "phaseincr", 0, "onoff", "phaseincr");

    CLASS_ATTR_LONG(c, "accum", 0, t_olookup, accum);
    CLASS_ATTR_STYLE_LABEL(c, "accum", 0, "onoff", "acumulate points");
    
    CLASS_ATTR_LONG(c, "seq", 0, t_olookup, seq);
    CLASS_ATTR_FILTER_MIN(c, "seq", -1);
    CLASS_ATTR_FILTER_MAX(c, "seq", 2);
    CLASS_ATTR_LABEL(c, "seq", 0, "sequence optimization");

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    olookup_class = c;
    
    post("%s by %s.", NAME, AUTHORS);
    post("Copyright (c) " COPYRIGHT_YEARS " Hochschule für Music und Theater Hamburg.  All rights reserved.");
}
END_USING_C_LINKAGE
