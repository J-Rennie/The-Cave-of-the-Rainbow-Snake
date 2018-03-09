keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyLeft = keyboard_check_pressed(vk_left);
keyRight = keyboard_check_pressed(vk_right);
keySelect = keyboard_check_released(vk_enter);
keyEsc = keyboard_check_pressed(vk_escape);

switch(state)
{
	// =====[CASE - MAIN]=====
	case menuState.main:
		if(!instance_exists(oFade))
		{
			//select = MenuKeySelection(select, keyUp, keyDown, mLength);
			
			for(var i = 0; i <= mLength - 1; i++)
			{
				strLength = string_width(menu[i]);
				if(Within(mouse_x, 640 - strLength, 640 + strLength) || Within(mouse_y, (menuY - 40) + (80 * i), (menuY + 40) + (80 * i)))
					select = i;
			}
		
			if(keySelect)
			{
				if(select == 0)
					instance_create_depth(x, y, -10, oFade);
				else if(select == 1)
					state = menuState.toLevels;
				else
					game_end();
			
				select = 0;
			}
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
