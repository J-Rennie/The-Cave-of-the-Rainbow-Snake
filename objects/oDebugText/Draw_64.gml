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
			"Mouse Coordinates(x,y): (" + string(mouse_x) + "," + string(mouse_y) + ")",
			"GUI Mouse Coordinates(x,y): (" + string(RoomXtoGUI(mouse_x)) + "," + string(RoomYtoGUI(mouse_y)) + ")"
		);
	}
}