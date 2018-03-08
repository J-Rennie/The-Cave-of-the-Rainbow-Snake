/// @function Within(val,min,max)
/// @description Checks whether a value is within a given range, returns boolean
/// @param val The value to check
/// @param min The lower boundary of the range
/// @param max The higher boundary of the range

var _val = argument0;
var _min = argument1;
var _max = argument2;

if(_min <= _val && _val <= _max)
	return(true);
else
	return(false);