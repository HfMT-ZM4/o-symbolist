const SVGPath = require('svgpath');

let pstring = 'M100,50c0,27.614-22.386,50-50,50S0,77.614,0,50S22.386,0,50,0S100,22.386,100,50';
let path = SVGPath(pstring);

let p2 = SVGPath(path);

var transformed = path
                    .scale(0.5)
                    .translate(100,200);
transformed.iterate();
                    
                    //.toString();

console.log(transformed);


