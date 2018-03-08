/// @function DrawTextShadowTransformed(x, y, string, text_colour, shadow_colour, intensity, distance, shadow_angle, x_scale, y_scale, text_angle)
/// @description Draws a transformed string with a drop shadow
/// @param x The x coordinate for the string
/// @param y The y coordinate for the string
/// @param {string} string The string to draw
/// @param text_colour The colour of the text to draw
/// @param shadow_colour The colour of the text shadow
/// @param intensity The alpha value of the shadow
/// @param distance The distance of the shadow from the text
/// @param shadow_angle The angle of the shadow
/// @param x_scale The x scale of the text
/// @param y_scale The y scale of the text
/// @param text_angle The angle of the text


var _x = argument0;
var _y = argument1;
var _string = argument2;
var _textCol = argument3;
var _shadowCol = argument4;
var _intensity = argument5;
var _distance = argument6;
var _shadowAngle = argument7;
var _xScale = argument8;
var _yScale = argument9;
var _textAngle = argument10;

var _xDistance = lengthdir_x(_distance, _shadowAngle);
var _yDistance = lengthdir_y(_distance, _shadowAngle);

draw_set_color(_shadowCol);
draw_set_alpha(_intensity);
draw_text_transformed(_x + _xDistance, _y + _yDistance, _string, _xScale, _yScale, _textAngle);
draw_set_alpha(1);
draw_set_colour(_textCol);
draw_text_transformed(_x, _y, _string, _xScale, _yScale, _textAngle);