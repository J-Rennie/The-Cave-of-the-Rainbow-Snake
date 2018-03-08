/// @function MenuKeySelection(selection_var,up_key,down_key,menu_length)
/// @description Returns the menu selection value
/// @param selection_var The variable that holds the selection value
/// @param up_key The key used to navigate up the menu
/// @param down_key The key used to navigate down the menu
/// @param menu_length The length of the menu

var _select = argument0;
var _keyUp = argument1;
var _keyDown = argument2;
var _length = argument3;

if(_keyUp)
	return((_select + (_length -1)) % _length);
else if(_keyDown)
	return((_select + 1) % _length);
else
	return(_select);