/// @function GetCentreY(y1,y2)
/// @description Returns the centre y coordinate between two points
/// @param y1 The first y coordinate
/// @param y2 The second y coordinate

var _y1 = argument0;
var _y2 = argument1;

var _min = min(_y1, _y2);
var _max = max(_y1, _y2);

var _dif = _max - _min;

return(_min + (_dif / 2));