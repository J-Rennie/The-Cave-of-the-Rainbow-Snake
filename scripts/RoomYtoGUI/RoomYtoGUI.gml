/// @function RoomYtoGUI(y)
/// @description Converts Room coordinates to GUI coordinates
/// @param y The coordinate to convert

var _y = argument0;

return(_y * (view_get_hport(0) / camera_get_view_height(view_camera[0]) - camera_get_view_y(view_camera[0])));