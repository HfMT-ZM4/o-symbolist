
/* global drawsocket:readonly  */
 

/**
 * dev notes
 * 
 * considering moving all mouse interaction to the server-side, since some objects might translate or rotate in special ways...
 * 
 * 
 */
    
/**
 * globals
 */
const svgObj = document.getElementById("svg");
const mainSVG = document.getElementById("main-svg");

let symbolist_log = null;

let clickedObj = null;
let prevEventTarget = null;
let selected = [];
let selectedCopy = [];

let mousedown_pos = {x: 0, y: 0};
let mouse_pos = {x: 0, y: 0};

let currentContext = svgObj;
let currentPaletteClass =  "thereminStave";

let selectedClass = currentPaletteClass;


/**
 *  listener receives all forwarded messages from drawsocket
 */
 
drawsocket.setInputListener( (key, objarr, wasHandled) => {
// or no default because we listen to all messages to drawsocket... ?
    if( wasHandled == false )
    {
        switch (key) {
            case "symbolist_log":
                symbolist_set_log(objarr); // << prob need to iterate obj array...
            break;
            default: 
                symbolist_set_log(`${key} message not handlded by symbolist or drawsocket`);
            break;
        }
    }
   // console.log("called", key);
});

/** 
 * API -- make namespace here ?
 */

function symbolist_set_log(msg)
{
    if( symbolist_log == null )
        symbolist_log = document.getElementById("symbolist_log");
    
    //console.log(symbolist_log == null);

    if( symbolist_log != null )
        symbolist_log.innerHTML = `<span>${msg}</span>`;
}


function symbolist_setClass(_class)
{
//    console.log("symbolist_setClass", _class);
    symbolist_set_log(`selected symbol ${_class}`)

    document.querySelectorAll(".palette .selected").forEach( el => {
        el.classList.remove("selected");
    });

    let paletteItem = document.getElementById(`${_class}-paletteIcon`);
    paletteItem.classList.add("selected");

    currentPaletteClass = _class;

}

/**
 * 
 * @param {set context from symbolist controller} obj 
 */
function symbolist_setContext(obj)
{
    document.querySelectorAll(".current_context").forEach( el => {
        el.classList.remove("current_context");
    });

    obj.classList.add("current_context");
    currentContext = document.getElementById(obj.id);
    symbolist_set_log(`set context to ${obj.id}`)
}


 /**
  * internal methods
  */


/**
 * set context from UI event, selecting most recently selected object
 */
function setSelectedContext()
{
    if( selected.length > 0 )
    {
        document.querySelectorAll(".current_context").forEach( el => {
            el.classList.remove("current_context");
        });

        currentContext = selected[selected.length-1];

        symbolist_set_log(`context is now: ${currentContext.id}`);
    }
}
 

function hitTest(regionRect, obj)
{
    const objBBox = obj.getBoundingClientRect();

    return  !(objBBox.left  > regionRect.right ||
             objBBox.top    > regionRect.bottom ||
             objBBox.right  < regionRect.left || 
             objBBox.bottom < regionRect.top );

}

function recursiveHitTest(region, element)
{
    if( hitTest(region, element) )
        return true;

    for (let i = 0; i < element.children.length; i++) 
    {
        if( recursiveHitTest(region, element.children[i]) )
            return true;
        //console.log(mainSVG.children[i].tagName);
    }

    return false;
}

function addToSelection( element )
{
    if( element.id == 'dragRegion' )
        return;

    for( let i = 0; i < selected.length; i++)
    {
        if( selected[i] == element )
            return;    
    }

    selected.push(element);

    if( !element.classList.contains("symbolist_selected") )
    {
        element.classList.add("symbolist_selected");
    }

    // copy with selected tag to deal with comparison later
    selectedCopy.push( element.cloneNode(true) );
  

}

function selectedObjectsChanged()
{
    for( let i = 0; i < selected.length; i++)
    {
        if( !selectedCopy[i].isEqualNode( selected[i] ) ){
      //      console.log(selectedCopy[i], selected[i] );    
            return true;
        }
            
        
    }

    return false;
}


function selectAllInRegion(region, element)
{
    for (let i = 0; i < element.children.length; i++) 
    {
        if( recursiveHitTest(region, element.children[i]) )
            addToSelection( element.children[i] );

    }
        
}

function deselectAll()
{
    let infoboxIds = [];

    for( let i = 0; i < selected.length; i++)
    {
        if( selected[i].classList.contains("symbolist_selected") )
        {
            selected[i].classList.remove("symbolist_selected");
            
            const boxname = selected[i].id + "-infobox";
            infoboxIds.push(boxname);

        }
    }

    selected = [];
    selectedCopy = [];
    if( infoboxIds.length > 0 )
    {
        drawsocket.send({
            event : {
                key: "symbolistEvent",
                val: {
                    symbolistAction: 'removeFromViewCache',
                    ids: infoboxIds
                }
            }
        }); 
    }
    
}



function deltaPt(ptA, ptB)
{
    return { x: ptA.x - ptB.x, y: ptA.y - ptB.y };
}
/*
function calcTransform(matrix, _x, _y)
{  
    return { 
        x: matrix.a * _x + matrix.c * _y + matrix.e, 
        y: matrix.b * _x + matrix.d * _y + matrix.f
    }   
}


function applyTransform(obj)
{
    let matrix = obj.getCTM();

    let x, y;


    switch ( obj.tagName )
    {
        case "circle":
            {
                x = obj.getAttribute("cx");
                y = obj.getAttribute("cy");
                const newpt = calcTransform(matrix, x, y)
                obj.setAttribute("cx", newpt.x );
                obj.setAttribute("cy", newpt.y );
            }
            break;
        case "rect":
            break;
        case "path":
            break;                
        default:
            break;
    }
}
*/

function translate(obj, delta_pos)
{
    if( !obj )
        return;

//    let svg = document.getElementById("svg");
    if( obj === svgObj )
        return;
        
    let transformlist = obj.transform.baseVal; 

    let matrix = obj.getCTM();
    matrix.e = delta_pos.x;
    matrix.f = delta_pos.y;

    const transformMatrix = svgObj.createSVGTransformFromMatrix(matrix);
    transformlist.initialize( transformMatrix );

}

function translate_selected(delta_pos)
{
    for( let i = 0; i < selected.length; i++)
    {
        translate(selected[i], delta_pos);
    }
}


function copyObjectAndAddToParent(obj)
{
    let new_node = obj.cloneNode(true);
    new_node.id = makeUniqueID(obj);
    return obj.parentElement.appendChild(new_node);
}

function copySelected()
{

    let newArray = [];
    for( let i = 0; i < selected.length; i++)
    {
        newArray.push( copyObjectAndAddToParent(selected[i]) );
    }

    deselectAll();

    for( let i = 0; i < newArray.length; i++)
    {
        addToSelection(newArray[i]);
    }

}

function isNumeric(value) {
    return !isNaN(value - parseFloat(value));
}

function fairlyUniqueNumber() {
    return (
      Number(String(Math.random()).slice(2)) + 
      Date.now() + 
      Math.round(performance.now())
    ).toString(36);
  }

function makeUniqueID(obj)
{
    let tok = obj.id.split("_u_");
    let base = ( tok.length == 1 ) ? tok : tok[0];
    let newId = base+'_u_'+fairlyUniqueNumber();
    return newId;
}

/**
 * iterates to top level element from child
 * @param {target element} elm 
 */

function getTopLevel(elm)
{    
    while(  elm != svgObj && 
            elm.parentNode && 
            elm.parentNode.id != 'main-svg' && 
            elm.parentNode.id != 'palette' ) // elm.parentNode != currentContext
    {
        elm = elm.parentNode;
    }

    return elm;
}



// maybe use arrays instead?
function formatClassArray(classlist)
{
    let classArr = attr.value.includes(" ") ? attr.value.split(" ") : attr.value;
                
    if( Array.isArray(classArr) )
    {
        let newClassList = [];
        for( let ii = 0 ; ii < classArr.length; ii++)
        {
            if( classArr[ii] != 'symbolist_selected' )
            {
                newClassList.push(classArr[ii]);
            }
        }

        return newClassList;
    }
    
    return classArr;

}

function removedSymbolistSelected(classlist)
{
    return typeof classlist !== "undefined" ? classlist.replace(" symbolist_selected", "" ) : "";
}

function elementToJSON(elm)
{
    if( typeof elm === 'undefined' || elm == document )
        return null;

    if( typeof elm.attributes === 'undefined' )
    {
        console.log('->',elm);
        return null;
    }
        
        
    let obj = {};
    obj.type = elm.tagName;
    for( let i = 0, l = elm.attributes.length; i < l; ++i)
    {
        const attr = elm.attributes[i];
        if( attr.specified )
        {
            if( obj.type === 'path' && attr.name === 'd' ){                
                obj.points = SVGPoints.toPoints({ type: "path", d: attr.value });
            }

            if( attr.name === "class" )
            {
                obj.class = removedSymbolistSelected(attr.value);
                
            }
            else
                obj[attr.name] = (isNumeric(attr.value) ? Number(attr.value) : attr.value);
        }
    }

    if( elm != svgObj )
    {
        let children = [];
        if( elm.hasChildNodes() ){
            const nodes = elm.childNodes;
            for(let i = 0, l = nodes.length; i < l; ++i){
                children.push(  elementToJSON(nodes[i]) ); 
            }
            obj.children = children;
        }
    }

    return obj;
}


function symbolost_sendKeyEvent(event, caller)
{
    
    let sel_arr = [];
    for( let i = 0; i < selected.length; i++)
    {
        let _jsonEl = elementToJSON( selected[i]);
        _jsonEl.bbox = selected[i].getBoundingClientRect();
        sel_arr.push( _jsonEl );
    }

    let _jsonContext = elementToJSON( currentContext );
    _jsonContext.bbox = currentContext.getBoundingClientRect();

    drawsocket.send({
        event: {
            key: 'key',
            val: {
                xy: [mouse_pos.x, mouse_pos.y],
                context: _jsonContext,
                action: caller,
                keyVal: event.key,
                mods : {
                    alt: event.altKey,
                    shift: event.shiftKey,
                    ctrl: event.ctrlKey,
                    meta: event.metaKey
                },
                paletteClass: currentPaletteClass, 
                selected: sel_arr,
                symbolistAction: event.symbolistAction
            }
        }
    });
}


function symbolist_keydownhandler(event)
{
    let nmods =  event.altKey + event.shiftKey + event.ctrlKey + event.metaKey;
    switch( event.key )
    {
        case "i":
            if( nmods == 0 && selected.length > 0 )
                event.symbolistAction = "getInfo";
            break;
        case "Escape":
            deselectAll();
            break;
        case "s":
            setSelectedContext();
            event.symbolistAction = "setContext";
            break;

    }

    symbolost_sendKeyEvent(event, "keydown");
}

function symbolist_keyuphandler(event)
{
    symbolost_sendKeyEvent(event, "keyup");
}


function sendMouseEvent(event, caller)
{    
    const toplevelObj = getTopLevel(event.target);
    
    const _id = ( event.target.id == "svg" || toplevelObj.id == currentContext.id ) ? selectedClass+'_u_'+fairlyUniqueNumber() : toplevelObj.id;

  //  console.log(_id, selectedClass, toplevelObj.id, currentContext);
   
    let sel_arr = [];

    for( let i = 0; i < selected.length; i++)
    {
        let _jsonEl = elementToJSON( selected[i]);
        _jsonEl.bbox = selected[i].getBoundingClientRect();
        sel_arr.push( _jsonEl );    
    }

    let _jsonContext = elementToJSON( currentContext );
    _jsonContext.bbox = currentContext.getBoundingClientRect();

    let _jsonTarget = elementToJSON( toplevelObj );
    _jsonTarget.bbox = toplevelObj.getBoundingClientRect();


    let obj = {};
    obj.event = {
        key: 'mouse',
        val: {
            id: _id,
            context: _jsonContext,
            paletteClass: currentPaletteClass, // class specified by the palette
            action: caller,
            xy: [ event.clientX, event.clientY ],
            mousedownPos: event.buttons == 1 ? [mousedown_pos.x, mousedown_pos.y ] : null,
            button: event.buttons,
            mods : {
                alt: event.altKey,
                shift: event.shiftKey,
                ctrl: event.ctrlKey,
                meta: event.metaKey
            },
            target: _jsonTarget, // the object receiving mouse event
            selected: sel_arr
        }
    };

    if( caller == 'wheel' )
    {
        obj.event.val.delta = [ event.deltaX, event.deltaY ];
    }

    if( event.hasOwnProperty("symbolistAction") )
        obj.event.val.symbolistAction = event.symbolistAction;

    drawsocket.send(obj);

}

function getDragRegion(event)
{
    let left, right, top, bottom;
    if( mousedown_pos.x < event.clientX )
    {
        right = event.clientX;
        left = mousedown_pos.x;
    }
    else
    {
        left = event.clientX;
        right = mousedown_pos.x;
    }

    if( mousedown_pos.y < event.clientY )
    {
        bottom = event.clientY;
        top = mousedown_pos.y;
    }
    else
    {
        top = event.clientY;
        bottom = mousedown_pos.y;
    }

    return {
        left: left,
        top: top,
        right: right,
        bottom: bottom
    };
}

function drawDragRegion(_dragRegion)
{
    drawsocket.input({
        key: 'svg',
        val: {
            id: 'dragRegion',
            new: 'rect',
            x: _dragRegion.left,
            y: _dragRegion.top,
            width: _dragRegion.right - _dragRegion.left,
            height: _dragRegion.bottom - _dragRegion.top,
            fill: 'none',
            'stroke-width': 1,
            'stroke': 'rgba(0,0,0,0.5)'
        }
    });
}

function clearDragRegionRect() 
{
    drawsocket.input({
        key: 'remove',
        val: 'dragRegion'
    });    
}

function symbolsit_dblclick(event)
{
    setSelectedContext();
    deselectAll();
    event.symbolistAction = "setContext";
    sendMouseEvent(event, "dblclick");

/*
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

    prevEventTarget = _eventTarget;             

    if( currentContext !== _eventTarget )
    {
        event.symbolistAction = "set_context";
        currentContext = _eventTarget;
        console.log('set context to', currentContext);
    }
    
    sendMouseEvent(event, "dblclick");
    */
}


function symbolist_mousedown(event)
{          
    const _eventTarget = getTopLevel( event.target );

   // console.log("test", _eventTarget);
    
    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;


    if( !event.shiftKey && !event.altKey )
        deselectAll();

    if( _eventTarget != svgObj && _eventTarget != currentContext )
    {
        console.log(`selection, event ${_eventTarget.classList}, context ${currentContext.classList}` );
        
        addToSelection( _eventTarget );
        clickedObj = _eventTarget;

//        selectedClass =  clickedObj.classList[0]; // hopefully this will always be correct! not for sure though

        if( event.altKey )
        {
            copySelected();
            //clickedObj = copyObjectAndAddToParent(_eventTarget);       
            //addToSelection( clickedObj );
        }
        else if( event.altKey && event.metaKey )
        {
            event.symbolistAction = "create_menu";
        }

    }
    else
    {

        if( event.metaKey ){
            event.symbolistAction = "newFromClick_down";
        }

        clickedObj = null;
        selectedClass = currentPaletteClass; // later, get from palette selection
    }
    

    mousedown_pos = { x: event.clientX, y: event.clientY };
    mouse_pos = mousedown_pos;

    prevEventTarget = _eventTarget;
    
    sendMouseEvent(event, "mousedown");
}

function symbolist_mousemove(event)
{         
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

    if( event.buttons == 1 )
    {

        if( clickedObj )
        {
            translate_selected( deltaPt({ x: event.clientX, y: event.clientY }, mousedown_pos) );
        }
        else 
        {
            if( !event.shiftKey )
                deselectAll();

            if( event.metaKey ){
                event.symbolistAction = "newFromClick_drag";
            }

            let dragRegion = getDragRegion(event);

            selectAllInRegion( dragRegion, mainSVG );

            drawDragRegion(dragRegion);

        }
    }

    
    mouse_pos = { x: event.clientX, y: event.clientY };
    prevEventTarget = _eventTarget;

    sendMouseEvent(event, "mousemove");

}

function symbolist_mouseup(event)
{   
    clearDragRegionRect();

    const _eventTarget = getTopLevel( event.target );
    
    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;


//    console.log("1", _eventTarget.getAttribute("class"));

//    const classString = _eventTarget.getAttribute("class");

    if( event.metaKey ){
        event.symbolistAction = "newFromClick_up";

    }
    else
    {
       // console.log('compare', selectedCopy != selected, selectedCopy, selected );
        
        if( selectedObjectsChanged() ) // _eventTarget != svgObj
        {
            event.symbolistAction = "transformed";
        }
        
    }

    
    
    mouse_pos = { x: event.clientX, y: event.clientY };
    event.mousedownPos = mousedown_pos;

    sendMouseEvent(event, "mouseup");

    clickedObj = null;
    selectedClass = currentPaletteClass;
    prevEventTarget = _eventTarget;

}


function symbolist_mouseover(event)
{           
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;
/*
    if( !event.shiftKey && _eventTarget != prevEventTarget )
    {
        if( prevEventTarget.classList.contains("symbolist_selected") )
        {
            prevEventTarget.classList.remove("symbolist_selected");
        }

        if( _eventTarget != svgObj )
        {
            _eventTarget.classList.add("symbolist_selected");
        }
        
    }
*/
    prevEventTarget = _eventTarget;

    //sendMouseEvent(event, "mouseover");

}


function symbolist_mouseleave(event)
{           
    clearDragRegionRect();
    prevEventTarget = null;
}

function addSymbolistMouseHandlers(element)
{
    element.addEventListener("mousedown", symbolist_mousedown, true);
    element.addEventListener("mousemove", symbolist_mousemove, true);
    element.addEventListener("mouseup", symbolist_mouseup, true);
    element.addEventListener("mouseover", symbolist_mouseover, true);
    element.addEventListener("mouseleave", symbolist_mouseleave, true);
    element.addEventListener("dblclick", symbolsit_dblclick, true);

}

function removeSymbolistMouseHandlers(element)
{
    element.removeEventListener("mousedown", symbolist_mousedown, true);
    element.removeEventListener("mousemove", symbolist_mousemove, true);
    element.removeEventListener("mouseup", symbolist_mouseup, true);
    element.removeEventListener("mouseover", symbolist_mouseover, true);
    element.removeEventListener("mouseleave", symbolist_mouseleave, true);
    element.removeEventListener("dblclick", symbolsit_dblclick, true);
}

function addSymbolistKeyListeners()
{
  document.body.addEventListener("keydown", symbolist_keydownhandler);
  document.body.addEventListener("keyup", symbolist_keyuphandler);
}

function removeSymbolistKeyListeners()
{
  document.body.removeEventListener("keydown", symbolist_keydownhandler);
  document.body.removeEventListener("keyup", symbolist_keyuphandler);
}


addSymbolistMouseHandlers(svgObj);
addSymbolistKeyListeners();

