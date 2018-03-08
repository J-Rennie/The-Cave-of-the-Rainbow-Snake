/// @function NineSlice(sprite, x1, y1, x2, y2, alpha)
/// @description Draws a text box using a given sprite at given coordinates
/// @param sprite The sprite to use for drawing
/// @param x1 The x coordinate of the top left corner of the box
/// @param y1 The y coordinate of the top left corner of the box
/// @param x2 The x coordinate of the bottom right corner of the box
/// @param y2 The y coordinate of the bottom right corner of the box
/// @param alpha The alpha value to draw the box at

var _sprite = argument0;
var _x1 = argument1;
var _y1 = argument2;
var _x2 = argument3;
var _y2 = argument4;
var _alpha = argument5;
var _size = sprite_get_width(_sprite) / 3;
var _w = _x2 - _x1;
var _h = _y2 - _y1;

//MIDDLE
	draw_sprite_part_ext(_sprite, 0, _size, _size, 1, 1, _x1 + _size, _y1 + _size, _w - _size*2, _h - _size*2, c_white, _alpha);

//EDGES
//Top Edge
	draw_sprite_part_ext(_sprite, 0, _size, 0, 1, _size, _x1 + _size, _y1, _w - _size*2, 1, c_white, _alpha);
//Bottom Edge
	draw_sprite_part_ext(_sprite, 0, _size, _size*2, 1, _size, _x1 + _size, _y2 - _size, _w - _size*2, 1, c_white, _alpha);
//Left Edge
	draw_sprite_part_ext(_sprite, 0, 0, _size, _size, 1, _x1, _y1 + _size, 1, _h - _size*2, c_white, _alpha);
//Right Edge
	draw_sprite_part_ext(_sprite, 0, _size*2, _size, _size, 1, _x2 - _size, _y1 + _size, 1, _h - _size*2, c_white, _alpha);
	
//CORNERS
//Top Left
	draw_sprite_part(_sprite, 0, 0, 0, _size, _size, _x1, _y1);
//Top Right
	draw_sprite_part(_sprite, 0, _size*2, 0, _size, _size, _x2 - _size, _y1);
//Bottom Left
	draw_sprite_part(_sprite, 0, 0, _size*2, _size, _size, _x1, _y2 - _size);
//Bottom Right
	draw_sprite_part(_sprite, 0, _size*2, _size*2, _size, _size, _x2 - _size, _y2 - _size);