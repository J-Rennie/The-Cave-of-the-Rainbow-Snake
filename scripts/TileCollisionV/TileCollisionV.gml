/// @function TileCollisionV(tilemap, vspeed)
/// @description Handles vertical tile based collision
/// @param tilemap The tilemap to use for collision
/// @param vspeed The variable storing the objects vertical speed

var _tilemap = argument0;
var _vsp = argument1;
var _bbox_side;

if(_vsp > 0) _bbox_side = bbox_bottom; else _bbox_side = bbox_top;
	
if(tilemap_get_at_pixel(_tilemap, bbox_left, _bbox_side + _vsp) != 0) || (tilemap_get_at_pixel(_tilemap, bbox_right, _bbox_side + _vsp) != 0)
{
	if(_vsp > 0) y = y - (y mod 32) + 31 - (bbox_bottom - y);
	else y = y - (y mod 32) - (bbox_top - y);
	_vsp = 0;
}
y += _vsp