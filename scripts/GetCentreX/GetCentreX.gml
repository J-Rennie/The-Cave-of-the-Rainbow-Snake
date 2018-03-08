/// @function GetCentreX(x1,x2)
/// @description Returns the centre x coordinate between two points
/// @param x1 The first x coordinate
/// @param x2 The second x coordinate

var _x1 = argument0;
var _x2 = argument1;

var _min = min(_x1, _x2);
var _max = max(_x1, _x2);

var _dif = _max - _min;

return(_min + (_dif / 2));