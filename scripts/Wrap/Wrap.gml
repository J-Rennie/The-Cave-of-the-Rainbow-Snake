/// @function Wrap(val,min,max)
/// @description Returns the value wrapped
/// @param val The value to wrap
/// @param min The minimum threshold of the value
/// @param max The maximum threshold of the value

var _val = argument0;
var _min = argument1;
var _max = argument2;

if(_val mod 1 == 0)
{
	while(_val > _max || _val < _min)
	{
		if(_val > _max)
			_val = _min + _val - _max - 1;
		else if(_val < _min)
			_val = _max + _val - _min + 1;
		else
			_val = _val;
	}
	return(_val);
}
else
{
	var _old = argument0 + 1;
	
	while(_val != _old)
	{
		_old = _val;
		if(_val < _min)
			_val = _max - (_min - _val);
		else if(_val > _max)
			_val = _min + (_val - _max);
		else
			_val = _val;
	}
	return(_val);
}