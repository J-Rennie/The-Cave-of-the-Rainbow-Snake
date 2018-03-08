/// @function TileCollisionH(tilemap, hspeed)
/// @description Handles horizontal tile base collision
/// @param tilemap The tilemap to use for collision
/// @param hspeed The horizontal speed of the instance

var _tilemap = argument0;
var _hsp = argument1;
var _bbox_side;

if(_hsp > 0) 
	_bbox_side = bbox_right; 
else 
	_bbox_side = bbox_left;
	
if(tilemap_get_at_pixel(_tilemap, _bbox_side + _hsp, bbox_top) != 0) || (tilemap_get_at_pixel(_tilemap, _bbox_side + _hsp, bbox_bottom) != 0)
{
	if(_hsp > 0) 
		x = x - (x mod 32) + 31 - (bbox_right - x);
	else 
		x = x - (x mod 32) - (bbox_left - x);
	_hsp = 0;
}
x += _hsp;