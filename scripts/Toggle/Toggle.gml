/// @function Toggle(var,duration,val1,val2,...)
/// @description Toggles between two values every (duration) seconds
/// @param var The variable to toggle
/// @param duration The number of seconds between toggles, set to -1 for no duration
/// @param val1 The first value to toggle between
/// @param val2 The second value to toggle between

var _var = argument[0]; // the variable to toggle
var _secs = argument[1] * 1000; // the number of seconds between toggles
var _a, _b; // intialises variables

// if number of arguments is greater than 2 create array of conditions
if(argument_count > 2)
{
	for(var i = 0; i < floor(argument_count - 2) / 2; i++)
	{
		_a[i] = argument[2 * i + 2];
		_b[i] = argument[2 * i + 3];
	}
}
// else set condition arrays to true and false
else
{
	_a[0] = true;
	_b[0] = false;
}

// if duration is given toggle every (duration) seconds
if(_secs != -1)
{
	if(current_time % _secs == 0)
	{
		for(var j = 0; j < array_length_1d(_a); j++)
		{
			if(_var == _a[i])
				var _return = (_b[i]);
			else if(_var == _b[j])
				return(_a[j]);
		}
	}
}
// else toggle instantly
else
{
	for(var i = 0; i < array_length_1d(_a); i++)
	{
		if(_var == _a[i])
			return(_b[i]);
		else if(_var == _b[i])
			return(_a[i]);
	}	
}