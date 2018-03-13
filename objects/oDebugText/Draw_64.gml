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
			"GUI Mouse Coordinates(x,y): (" + string(RoomXtoGUI(mouse_x)) + "," + string(RoomYtoGUI(mouse_y)) + ")",
			//"Play Rectangle(x1,y1,x2,y2): (" + string(610 - (string_width(oStart.menu[0]) / 2)) + "," + string(oStart.menuY - 13) + "," + string(670 + (string_width(oStart.(menu[0]) / 2)) + "," + string(oStart.menuY + string_height(oStart.menu[0])) + ")"
		);
	}
}