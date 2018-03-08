/// @function DebugText( string0, string1, string2,...)
/// @description Displays debug information
/// @param string0
/// @param string1
/// @param string2
/// @param ...

draw_set_font(-1);

for(var i = 0; i <= argument_count - 1; i++)
{
	draw_set_colour(c_black);
	draw_text(12, 12 + (20 * i), argument[i]);
	draw_set_colour(c_white);
	draw_text(10, 10 + (20 * i), argument[i]);
}