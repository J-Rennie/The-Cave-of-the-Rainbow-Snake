/// @description Draw debug text

if(debug_mode)
{
	if(room == 0)
	{
		DebugText
		(
			"Select: " + string(oStart.select),
			"Menu State: " + string(oStart.state),
			"YY: " + string(oStart.yy),
			"Alpha: " + string(oStart.alpha),
			"Scale: " + string(oStart.scale)
		);
	}
}