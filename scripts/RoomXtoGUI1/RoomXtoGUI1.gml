/// @function RoomXtoGUI(x)
/// @description Converts Room coordinates to GUI coordinates
/// @param x The coordinate to convert

var _x = argument0;

return(_x * (view_get_wport(0) / camera_get_view_width(view_camera[0]) - camera_get_view_x(view_camera[0])));