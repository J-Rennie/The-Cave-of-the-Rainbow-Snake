/// @function Wave(from, to, duration, offset)
/// @description Returns a value that will wave back and forth between [from-to] over [duration] seconds
/// @param from The value to calculate the distance from
/// @param to The value to calculate the distance to
/// @param duration The number of seconds to go between [from] and [to]
/// @param offset The offset of the duration

var _from = argument0;
var _to = argument1;
var _duration = argument2;
var _offset = argument3;

var _a4 = (_to - _from) * 0.5;
return(_from + _a4 + sin((((current_time * 0.001) + _duration * _offset) / _duration) * (pi*2)) *_a4);