/// @function RoomtoGUI(val)
/// @description Converts Room coordinates to GUI coordinates
/// @param val The coordinate to convert

var val = argument0;

return(val * (view_get_wport(0) / camera_get_view_width(view_camera[0]) - camera_get_view_x(view_camera[0])));