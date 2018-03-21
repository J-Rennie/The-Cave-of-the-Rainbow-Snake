keySelect = mouse_check_button_pressed(mb_left);
keyEsc = keyboard_check_pressed(vk_escape);

switch(state)
{
	case menuState.start:
		if(keySelect)
		{
			alpha = 0;
			titleAlpha = 1;
			titleScale = 1;
			menuAlpha = 1;
			menuScale = 1;
			
			state = menuState.main;
		}
	break;
	
	// =====[CASE - MAIN]=====
	case menuState.main:
		if(!instance_exists(oFade))
		{
			xGUI = RoomXtoGUI(mouse_x);
			yGUI = RoomYtoGUI(mouse_y);
			
			if(Within(xGUI, 610 - (string_width(menu[0]) / 2), 670 + (string_width(menu[0]) / 2)) && Within(yGUI, menuY - 13, menuY + string_height(menu[0])))
			{
				select = 0;
				
				if(keySelect)
					instance_create_depth(x, y, -10, oFade);
			}
			else if(Within(xGUI, 610 - (string_width(menu[1]) / 2), 670 + (string_width(menu[1]) / 2)) && Within(yGUI, menuY + 67, menuY + 80 + string_height(menu[0])))
			{
				select = 1;
				
				if(keySelect)
				{
					state = menuState.toLevels;
					select = 0;
				}
			}
			else if(Within(xGUI, 610 - (string_width(menu[2]) / 2), 670 + (string_width(menu[2]) / 2)) && Within(yGUI, menuY + 147, menuY + 160 + string_height(menu[0])))
			{
				select = 2;
				
				if(keySelect)
					game_end();
			}	
			//if(Within(xGUI, ))
		}
	break;
	
	// =====[CASE - TO LEVELS]=====
	case menuState.toLevels:
		if(keyEsc)
		{
			state = menuState.fromLevels;
			select = 0;
		}
	break;
	
	// =====[CASE - LEVELS]=====
	case menuState.levels:
		select = MenuKeySelection(select, keyLeft, keyRight, 4);
		
		if(keyRight)
		{
			xx += 460;
			scale1 = 0.7;
			scale2 = 1;
		}
		else if(keyLeft)
		{
			xx += -460;
			scale1 = 0.7;
			scale3 = 1;
		}
		
		if(keyEsc)
		{
			state = menuState.fromLevels;
			select = 0;
		}
	break;
}
