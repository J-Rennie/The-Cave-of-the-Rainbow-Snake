/// @function Approach(a, b, amount)
/// @description Increases value a to value b by given amount
/// @param a The value to increase
/// @param b The value to increase 'a' to
/// @param amount The amount to increase by

var _a = argument0;
var _b = argument1;
var _amount = argument2;

if(_a < _b)
{
	_a += _amount;
	if(_a > _b)
		return(_b);
}
else
{
	_a -= _amount;
	if(_a < _b)
		return(_b);
}
return(_a);