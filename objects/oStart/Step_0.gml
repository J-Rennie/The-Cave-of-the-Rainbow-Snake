keyUp = keyboard_check_pressed(vk_up);
keyDown = keyboard_check_pressed(vk_down);
keyLeft = keyboard_check_pressed(vk_left);
keyRight = keyboard_check_pressed(vk_right);
keySelect = keyboard_check_released(vk_enter);
keyEsc = keyboard_check_pressed(vk_escape);

switch(state)
{
	case menuState.main:
		if(!instance_exists(oFade))
		{
				select = MenuKeySelection(select, keyUp, keyDown, mLength);
		
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
	
	case menuState.toLevels:
		if(keyEsc)
		{
			state = menuState.toMain;
			select = 0;
		}
	break;
	
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
			state = menuState.toMain;
			select = 0;
		}
	break;
}
