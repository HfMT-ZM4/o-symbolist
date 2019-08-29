
/*

so, we need:
- some kind of drawing UI
    straight lines
    curve points
    mouse drag
- path maniputions
    smooth (from complex path of straight lines) -- 
        see simplifyjs: http://mourner.github.io/simplify-js/
        and https://medium.com/@francoisromain/smooth-a-svg-path-with-functional-programming-1b9876b8bf7e
        and https://www.npmjs.com/package/chaikin-smooth
        and https://github.com/SatoshiKawabata/SVGCatmullRomSpline#readme
        https://www.npmjs.com/package/curve-interpolator

    convert shapes to path
    rotate
    scale
        https://github.com/fontello/svgpath -- looks good, manipulates point array
    
    convert to-from svg string to point array
        https://github.com/colinmeinke/svg-points
    

    * note that paths need to be parsed into a sequence of typed points in an array to be simplified/transformed
        where should the path data live?
        
    add points
    remove points
        
    which things should be in symbolist which in drawsocket?

*/

const Points = require('points');
const SVGPoints = require('svg-points');


let pstring = 'M100,50c0,27.614-22.386,50-50,50S0,77.614,0,50S22.386,0,50,0S100,22.386,100,50';


let pointArray = SVGPoints.toPoints({
    type: 'path',
    d: pstring
  });
console.log(SVGPoints.toPath( pointArray ) );

// hard to remember which is in points or svg-points, maybe make a new name space
const foo = Points.offset(pointArray, -100, 100)
console.log(SVGPoints.toPath( foo ) );
