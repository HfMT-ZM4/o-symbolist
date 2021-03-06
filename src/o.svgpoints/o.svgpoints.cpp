
#include "o.svgpoints.hpp"

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "ext_buffer.h"
//#include "buffer.h"

#include "osc.h"
#include "osc_bundle_iterator_s.h"

#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include <string>
#include <vector>
#include <unordered_map>

typedef std::unordered_map<std::string, double> svgCurvePoints;

struct svgPoint {
    std::string svgType;
    double x,y;
    std::unordered_map<std::string, double> curve;
    bool moveTo = false;
    
    svgPoint( double _x, double _y) : x(_x), y(_y) {}
    svgPoint( double _x, double _y, svgCurvePoints _curve ) : x(_x), y(_y), curve(_curve) {}

    inline svgPoint &isMoveTo(bool v){ moveTo = v; return *this; }
};

struct svgCircle {
    double cx,cy,r;
};

std::vector<svgPoint> getPointsFromCircle(svgCircle _ref2) {
    auto cx = _ref2.cx;
    auto cy = _ref2.cy;
    auto r = _ref2.r;
    
    std::vector<svgPoint> ret;
    ret.emplace_back( svgPoint( cx, cy - r).isMoveTo(true) );
    ret.emplace_back( svgPoint( cx, cy + r, svgCurvePoints( ) ) );

   /*
    decided to do this in odot for now
    
    return [
            { x: cx, y: cy - r, moveTo: true },
            { x: cx, y: cy + r, curve: { type: 'arc', rx: r, ry: r, sweepFlag: 1 } },
            { x: cx, y: cy - r, curve: { type: 'arc', rx: r, ry: r, sweepFlag: 1 } }];
    */
}

/*
void toPoints(std::unordered_map _ref)
{
        var type = _ref.type,
        props = objectWithoutProperties(_ref, ['type']);
        
        switch (type) {
            case 'circle':
                return getPointsFromCircle(props);
            case 'ellipse':
                return getPointsFromEllipse(props);
            case 'line':
                return getPointsFromLine(props);
            case 'path':
                return getPointsFromPath(props);
            case 'polygon':
                return getPointsFromPolygon(props);
            case 'polyline':
                return getPointsFromPolyline(props);
            case 'rect':
                return getPointsFromRect(props);
            case 'g':
                return getPointsFromG(props);
            default:
                throw new Error('Not a valid shape type');
        }
    };
    
    var getPointsFromCircle = function getPointsFromCircle(_ref2) {
        var cx = _ref2.cx,
        cy = _ref2.cy,
        r = _ref2.r;
        
        return [{ x: cx, y: cy - r, moveTo: true }, { x: cx, y: cy + r, curve: { type: 'arc', rx: r, ry: r, sweepFlag: 1 } }, { x: cx, y: cy - r, curve: { type: 'arc', rx: r, ry: r, sweepFlag: 1 } }];
    };
    
    var getPointsFromEllipse = function getPointsFromEllipse(_ref3) {
        var cx = _ref3.cx,
        cy = _ref3.cy,
        rx = _ref3.rx,
        ry = _ref3.ry;
        
        return [{ x: cx, y: cy - ry, moveTo: true }, { x: cx, y: cy + ry, curve: { type: 'arc', rx: rx, ry: ry, sweepFlag: 1 } }, { x: cx, y: cy - ry, curve: { type: 'arc', rx: rx, ry: ry, sweepFlag: 1 } }];
    };
    
    var getPointsFromLine = function getPointsFromLine(_ref4) {
        var x1 = _ref4.x1,
        x2 = _ref4.x2,
        y1 = _ref4.y1,
        y2 = _ref4.y2;
        
        return [{ x: x1, y: y1, moveTo: true }, { x: x2, y: y2 }];
    };
    
    var validCommands = /[MmLlHhVvCcSsQqTtAaZz]/g;
    
    var commandLengths = {
    A: 7,
    C: 6,
    H: 1,
    L: 2,
    M: 2,
    Q: 4,
    S: 4,
    T: 2,
    V: 1,
    Z: 0
    };
    
    var relativeCommands = ['a', 'c', 'h', 'l', 'm', 'q', 's', 't', 'v'];
    
    var isRelative = function isRelative(command) {
        return relativeCommands.indexOf(command) !== -1;
    };
    
    var optionalArcKeys = ['xAxisRotation', 'largeArcFlag', 'sweepFlag'];
    
    var getCommands = function getCommands(d) {
        return d.match(validCommands);
    };
    
    var getParams = function getParams(d) {
        return d.split(validCommands).map(function (v) {
            return v.replace(/[0-9]+-/g, function (m) {
                return m.slice(0, -1) + ' -';
            });
        }).map(function (v) {
            return v.replace(/\.[0-9]+/g, function (m) {
                return m + ' ';
            });
        }).map(function (v) {
            return v.trim();
        }).filter(function (v) {
            return v.length > 0;
        }).map(function (v) {
            return v.split(/[ ,]+/).map(parseFloat).filter(function (n) {
                return !isNaN(n);
            });
        });
    };
    
    var getPointsFromPath = function getPointsFromPath(_ref5) {
        var d = _ref5.d;
        
        var commands = getCommands(d);
        var params = getParams(d);
        
        var points = [];
        
        var moveTo = void 0;
        
        for (var i = 0, l = commands.length; i < l; i++) {
            var command = commands[i];
            var upperCaseCommand = command.toUpperCase();
            var commandLength = commandLengths[upperCaseCommand];
            var relative = isRelative(command);
            
            if (commandLength > 0) {
                var commandParams = params.shift();
                var iterations = commandParams.length / commandLength;
                
                for (var j = 0; j < iterations; j++) {
                    var prevPoint = points[points.length - 1] || { x: 0, y: 0 };
                    
                    switch (upperCaseCommand) {
                        case 'M':
                            var x = (relative ? prevPoint.x : 0) + commandParams.shift();
                            var y = (relative ? prevPoint.y : 0) + commandParams.shift();
                            
                            if (j === 0) {
                                moveTo = { x: x, y: y };
                                points.push({ x: x, y: y, moveTo: true });
                            } else {
                                points.push({ x: x, y: y });
                            }
                            
                            break;
                            
                        case 'L':
                            points.push({
                            x: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y: (relative ? prevPoint.y : 0) + commandParams.shift()
                            });
                            
                            break;
                            
                        case 'H':
                            points.push({
                            x: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y: prevPoint.y
                            });
                            
                            break;
                            
                        case 'V':
                            points.push({
                            x: prevPoint.x,
                            y: (relative ? prevPoint.y : 0) + commandParams.shift()
                            });
                            
                            break;
                            
                        case 'A':
                            points.push({
                            curve: {
                            type: 'arc',
                            rx: commandParams.shift(),
                            ry: commandParams.shift(),
                            xAxisRotation: commandParams.shift(),
                            largeArcFlag: commandParams.shift(),
                            sweepFlag: commandParams.shift()
                            },
                            x: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y: (relative ? prevPoint.y : 0) + commandParams.shift()
                            });
                            
                            var _iteratorNormalCompletion = true;
                            var _didIteratorError = false;
                            var _iteratorError = undefined;
                            
                            try {
                                for (var _iterator = optionalArcKeys[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
                                    var k = _step.value;
                                    
                                    if (points[points.length - 1]['curve'][k] === 0) {
                                        delete points[points.length - 1]['curve'][k];
                                    }
                                }
                            } catch (err) {
                                _didIteratorError = true;
                                _iteratorError = err;
                            } finally {
                                try {
                                    if (!_iteratorNormalCompletion && _iterator.return) {
                                        _iterator.return();
                                    }
                                } finally {
                                    if (_didIteratorError) {
                                        throw _iteratorError;
                                    }
                                }
                            }
                            
                            break;
                            
                        case 'C':
                            points.push({
                            curve: {
                            type: 'cubic',
                            x1: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y1: (relative ? prevPoint.y : 0) + commandParams.shift(),
                            x2: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y2: (relative ? prevPoint.y : 0) + commandParams.shift()
                            },
                            x: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y: (relative ? prevPoint.y : 0) + commandParams.shift()
                            });
                            
                            break;
                            
                        case 'S':
                            var sx2 = (relative ? prevPoint.x : 0) + commandParams.shift();
                            var sy2 = (relative ? prevPoint.y : 0) + commandParams.shift();
                            var sx = (relative ? prevPoint.x : 0) + commandParams.shift();
                            var sy = (relative ? prevPoint.y : 0) + commandParams.shift();
                            
                            var diff = {};
                            
                            var sx1 = void 0;
                            var sy1 = void 0;
                            
                            if (prevPoint.curve && prevPoint.curve.type === 'cubic') {
                                diff.x = Math.abs(prevPoint.x - prevPoint.curve.x2);
                                diff.y = Math.abs(prevPoint.y - prevPoint.curve.y2);
                                sx1 = prevPoint.x < prevPoint.curve.x2 ? prevPoint.x - diff.x : prevPoint.x + diff.x;
                                sy1 = prevPoint.y < prevPoint.curve.y2 ? prevPoint.y - diff.y : prevPoint.y + diff.y;
                            } else {
                                diff.x = Math.abs(sx - sx2);
                                diff.y = Math.abs(sy - sy2);
                                sx1 = prevPoint.x;
                                sy1 = prevPoint.y;
                            }
                            
                            points.push({ curve: { type: 'cubic', x1: sx1, y1: sy1, x2: sx2, y2: sy2 }, x: sx, y: sy });
                            
                            break;
                            
                        case 'Q':
                            points.push({
                            curve: {
                            type: 'quadratic',
                            x1: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y1: (relative ? prevPoint.y : 0) + commandParams.shift()
                            },
                            x: (relative ? prevPoint.x : 0) + commandParams.shift(),
                            y: (relative ? prevPoint.y : 0) + commandParams.shift()
                            });
                            
                            break;
                            
                        case 'T':
                            var tx = (relative ? prevPoint.x : 0) + commandParams.shift();
                            var ty = (relative ? prevPoint.y : 0) + commandParams.shift();
                            
                            var tx1 = void 0;
                            var ty1 = void 0;
                            
                            if (prevPoint.curve && prevPoint.curve.type === 'quadratic') {
                                var _diff = {
                                x: Math.abs(prevPoint.x - prevPoint.curve.x1),
                                y: Math.abs(prevPoint.y - prevPoint.curve.y1)
                                };
                                
                                tx1 = prevPoint.x < prevPoint.curve.x1 ? prevPoint.x - _diff.x : prevPoint.x + _diff.x;
                                ty1 = prevPoint.y < prevPoint.curve.y1 ? prevPoint.y - _diff.y : prevPoint.y + _diff.y;
                            } else {
                                tx1 = prevPoint.x;
                                ty1 = prevPoint.y;
                            }
                            
                            points.push({ curve: { type: 'quadratic', x1: tx1, y1: ty1 }, x: tx, y: ty });
                            
                            break;
                    }
                }
            } else {
                var _prevPoint = points[points.length - 1] || { x: 0, y: 0 };
                
                if (_prevPoint.x !== moveTo.x || _prevPoint.y !== moveTo.y) {
                    points.push({ x: moveTo.x, y: moveTo.y });
                }
            }
        }
        
        return points;
    };
    
    var getPointsFromPolygon = function getPointsFromPolygon(_ref6) {
        var points = _ref6.points;
        
        return getPointsFromPoints({ closed: true, points: points });
    };
    
    var getPointsFromPolyline = function getPointsFromPolyline(_ref7) {
        var points = _ref7.points;
        
        return getPointsFromPoints({ closed: false, points: points });
    };
    
    var getPointsFromPoints = function getPointsFromPoints(_ref8) {
        var closed = _ref8.closed,
        points = _ref8.points;
        
        var numbers = points.split(/[\s,]+/).map(function (n) {
            return parseFloat(n);
        });
        
        var p = numbers.reduce(function (arr, point, i) {
            if (i % 2 === 0) {
                arr.push({ x: point });
            } else {
                arr[(i - 1) / 2].y = point;
            }
            
            return arr;
        }, []);
        
        if (closed) {
            p.push(_extends({}, p[0]));
        }
        
        p[0].moveTo = true;
        
        return p;
    };
    
    var getPointsFromRect = function getPointsFromRect(_ref9) {
        var height = _ref9.height,
        rx = _ref9.rx,
        ry = _ref9.ry,
        width = _ref9.width,
        x = _ref9.x,
        y = _ref9.y;
        
        if (rx || ry) {
            return getPointsFromRectWithCornerRadius({
            height: height,
            rx: rx || ry,
            ry: ry || rx,
            width: width,
            x: x,
            y: y
            });
        }
        
        return getPointsFromBasicRect({ height: height, width: width, x: x, y: y });
    };
    
    var getPointsFromBasicRect = function getPointsFromBasicRect(_ref10) {
        var height = _ref10.height,
        width = _ref10.width,
        x = _ref10.x,
        y = _ref10.y;
        
        return [{ x: x, y: y, moveTo: true }, { x: x + width, y: y }, { x: x + width, y: y + height }, { x: x, y: y + height }, { x: x, y: y }];
    };
    
    var getPointsFromRectWithCornerRadius = function getPointsFromRectWithCornerRadius(_ref11) {
        var height = _ref11.height,
        rx = _ref11.rx,
        ry = _ref11.ry,
        width = _ref11.width,
        x = _ref11.x,
        y = _ref11.y;
        
        var curve = { type: 'arc', rx: rx, ry: ry, sweepFlag: 1 };
        
        return [{ x: x + rx, y: y, moveTo: true }, { x: x + width - rx, y: y }, { x: x + width, y: y + ry, curve: curve }, { x: x + width, y: y + height - ry }, { x: x + width - rx, y: y + height, curve: curve }, { x: x + rx, y: y + height }, { x: x, y: y + height - ry, curve: curve }, { x: x, y: y + ry }, { x: x + rx, y: y, curve: curve }];
    };
    
    var getPointsFromG = function getPointsFromG(_ref12) {
        var shapes = _ref12.shapes;
        return shapes.map(function (s) {
            return toPoints(s);
        });
    };
    
    var pointsToD = function pointsToD(p) {
        var d = '';
        var i = 0;
        var firstPoint = void 0;
        
        var _iteratorNormalCompletion = true;
        var _didIteratorError = false;
        var _iteratorError = undefined;
        
        try {
            for (var _iterator = p[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
                var point = _step.value;
                var _point$curve = point.curve,
                curve = _point$curve === undefined ? false : _point$curve,
                moveTo = point.moveTo,
                x = point.x,
                y = point.y;
                
                var isFirstPoint = i === 0 || moveTo;
                var isLastPoint = i === p.length - 1 || p[i + 1].moveTo;
                var prevPoint = i === 0 ? null : p[i - 1];
                
                if (isFirstPoint) {
                    firstPoint = point;
                    
                    if (!isLastPoint) {
                        d += 'M' + x + ',' + y;
                    }
                } else if (curve) {
                    switch (curve.type) {
                        case 'arc':
                            var _point$curve2 = point.curve,
                            _point$curve2$largeAr = _point$curve2.largeArcFlag,
                            largeArcFlag = _point$curve2$largeAr === undefined ? 0 : _point$curve2$largeAr,
                            rx = _point$curve2.rx,
                            ry = _point$curve2.ry,
                            _point$curve2$sweepFl = _point$curve2.sweepFlag,
                            sweepFlag = _point$curve2$sweepFl === undefined ? 0 : _point$curve2$sweepFl,
                            _point$curve2$xAxisRo = _point$curve2.xAxisRotation,
                            xAxisRotation = _point$curve2$xAxisRo === undefined ? 0 : _point$curve2$xAxisRo;
                            
                            d += 'A' + rx + ',' + ry + ',' + xAxisRotation + ',' + largeArcFlag + ',' + sweepFlag + ',' + x + ',' + y;
                            break;
                        case 'cubic':
                            var _point$curve3 = point.curve,
                            cx1 = _point$curve3.x1,
                            cy1 = _point$curve3.y1,
                            cx2 = _point$curve3.x2,
                            cy2 = _point$curve3.y2;
                            
                            d += 'C' + cx1 + ',' + cy1 + ',' + cx2 + ',' + cy2 + ',' + x + ',' + y;
                            break;
                        case 'quadratic':
                            var _point$curve4 = point.curve,
                            qx1 = _point$curve4.x1,
                            qy1 = _point$curve4.y1;
                            
                            d += 'Q' + qx1 + ',' + qy1 + ',' + x + ',' + y;
                            break;
                    }
                    
                    if (isLastPoint && x === firstPoint.x && y === firstPoint.y) {
                        d += 'Z';
                    }
                } else if (isLastPoint && x === firstPoint.x && y === firstPoint.y) {
                    d += 'Z';
                } else if (x !== prevPoint.x && y !== prevPoint.y) {
                    d += 'L' + x + ',' + y;
                } else if (x !== prevPoint.x) {
                    d += 'H' + x;
                } else if (y !== prevPoint.y) {
                    d += 'V' + y;
                }
                
                i++;
            }
        } catch (err) {
            _didIteratorError = true;
            _iteratorError = err;
        } finally {
            try {
                if (!_iteratorNormalCompletion && _iterator.return) {
                    _iterator.return();
                }
            } finally {
                if (_didIteratorError) {
                    throw _iteratorError;
                }
            }
        }
        
        return d;
    };
    
    var toPath = function toPath(s) {
        var isPoints = Array.isArray(s);
        var isGroup = isPoints ? Array.isArray(s[0]) : s.type === 'g';
        var points = isPoints ? s : isGroup ? s.shapes.map(function (shp) {
            return toPoints(shp);
        }) : toPoints(s);
        
        if (isGroup) {
            return points.map(function (p) {
                return pointsToD(p);
            });
        }
        
        return pointsToD(points);
    };
    
    var getErrors = function getErrors(shape) {
        var rules = getRules(shape);
        var errors = [];
        
        rules.map(function (_ref) {
            var match = _ref.match,
            prop = _ref.prop,
            required = _ref.required,
            type = _ref.type;
            
            if (typeof shape[prop] === 'undefined') {
                if (required) {
                    errors.push(prop + ' prop is required' + (prop === 'type' ? '' : ' on a ' + shape.type));
                }
            } else {
                if (typeof type !== 'undefined') {
                    if (type === 'array') {
                        if (!Array.isArray(shape[prop])) {
                            errors.push(prop + ' prop must be of type array');
                        }
                    } else if (_typeof(shape[prop]) !== type) {
                        // eslint-disable-line valid-typeof
                        errors.push(prop + ' prop must be of type ' + type);
                    }
                }
                
                if (Array.isArray(match)) {
                    if (match.indexOf(shape[prop]) === -1) {
                        errors.push(prop + ' prop must be one of ' + match.join(', '));
                    }
                }
            }
        });
        
        if (shape.type === 'g' && Array.isArray(shape.shapes)) {
            var childErrors = shape.shapes.map(function (s) {
                return getErrors(s);
            });
            return [].concat.apply(errors, childErrors);
        }
        
        return errors;
    };
    
    var getRules = function getRules(shape) {
        var rules = [{
                     match: ['circle', 'ellipse', 'line', 'path', 'polygon', 'polyline', 'rect', 'g'],
                     prop: 'type',
                     required: true,
                     type: 'string'
                     }];
        
        switch (shape.type) {
            case 'circle':
                rules.push({ prop: 'cx', required: true, type: 'number' });
                rules.push({ prop: 'cy', required: true, type: 'number' });
                rules.push({ prop: 'r', required: true, type: 'number' });
                break;
                
            case 'ellipse':
                rules.push({ prop: 'cx', required: true, type: 'number' });
                rules.push({ prop: 'cy', required: true, type: 'number' });
                rules.push({ prop: 'rx', required: true, type: 'number' });
                rules.push({ prop: 'ry', required: true, type: 'number' });
                break;
                
            case 'line':
                rules.push({ prop: 'x1', required: true, type: 'number' });
                rules.push({ prop: 'x2', required: true, type: 'number' });
                rules.push({ prop: 'y1', required: true, type: 'number' });
                rules.push({ prop: 'y2', required: true, type: 'number' });
                break;
                
            case 'path':
                rules.push({ prop: 'd', required: true, type: 'string' });
                break;
                
            case 'polygon':
            case 'polyline':
                rules.push({ prop: 'points', required: true, type: 'string' });
                break;
                
            case 'rect':
                rules.push({ prop: 'height', required: true, type: 'number' });
                rules.push({ prop: 'rx', type: 'number' });
                rules.push({ prop: 'ry', type: 'number' });
                rules.push({ prop: 'width', required: true, type: 'number' });
                rules.push({ prop: 'x', required: true, type: 'number' });
                rules.push({ prop: 'y', required: true, type: 'number' });
                break;
                
            case 'g':
                rules.push({ prop: 'shapes', required: true, type: 'array' });
                break;
        }
        
        return rules;
    };
    
    var valid = function valid(shape) {
        var errors = getErrors(shape);
        
        return {
        errors: errors,
        valid: errors.length === 0
        };
    };
    
    exports.toPath = toPath;
    exports.toPoints = toPoints;
    exports.valid = valid;
    
    Object.defineProperty(exports, '__esModule', { value: true });
    
})));
//# sourceMappingURL=svg-points.js.map
*/
