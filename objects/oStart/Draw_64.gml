draw_set_font(fMenu);
draw_set_halign(fa_center);

var b = Wave(255, 103, 1.3, 0);
var selectCol = make_color_rgb(255, 255, b);

switch(state)
{
	// =====[CASE - START]=====
	case menuState.start:
		if(alpha < 0.2)
		{
			titleScale = Approach(titleScale, 1.6, (1.6 - titleScale) / 25);
			titleAlpha = Approach(titleAlpha, 1, 0.01);
			
			if(titleAlpha > 0.98)
			{
				menuScale = Approach(menuScale, 1, (1 - menuScale) / 20);
				menuAlpha = Approach(menuAlpha, 1, 0.01);
			}
		}
		
	
		DrawTextShadowTransformed(640, 30, "The Cave\nof the\nRainbow Snake", c_white, titleAlpha, c_black, titleAlpha - 0.4, 8, -45, titleScale, titleScale, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadowTransformed(640, menuY + (80 * i), menu[i], selectCol, menuAlpha, c_black, menuAlpha - 0.4, 4, -45, menuScale, menuScale, 0);
			else
				DrawTextShadowTransformed(640, menuY + (80 * i), menu[i], c_white, menuAlpha, c_black, menuAlpha - 0.4, 4, -45, menuScale, menuScale, 0);
		}
		
		draw_set_alpha(menuAlpha);
		draw_sprite(sSound, sound, 10, 10);
		draw_set_alpha(1);
		
		draw_set_color(c_black);
		alpha = Approach(alpha, 0, 0.01);
		draw_set_alpha(alpha);
		draw_rectangle(0, 0, 1280, 720, false);
		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		if(menuAlpha == 1)
			state = menuState.main;
	break;
	
	// =====[CASE - MAIN]=====
	case menuState.main:
		menuScale = Wave(1, 1.2, 1.3, 0);
	
		DrawTextShadowTransformed(640, 30, "The Cave\nof the\nRainbow Snake", c_white, 1, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadowTransformed(640, menuY + (80 * i), menu[i], selectCol, 1, c_black, 0.6, 4, -45, menuScale, menuScale, 0);
			else
				DrawTextShadow(640, menuY + (80 * i), menu[i], c_white, 1, c_black, 0.6, 4, -45);
		}
		
		draw_sprite(sSound, sound, 35, 35);
		
		for(var i = 0; i <= mLength - 1; i++)
		{
			var a = string_width(menu[i]);
			draw_rectangle(640 - (a / 2), (menuY - 40) + (80 * i), 640 + (a / 2), (menuY + 40) + (80 * i), true);
		}
	break;
	
	// =====[CASE - FROM LEVELS]=====
	case menuState.fromLevels:
		yy = Approach(yy, 0, (yy - 0) / 10);
	
		DrawTextShadowTransformed(640, (30 - yy), "The Cave\nof the\nRainbow Snake", c_white, 1, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadow(640, (menuY - yy) + (80 * i), menu[i], selectCol, 1, c_black, 0.6, 4, -45);
			else
				DrawTextShadow(640, (menuY - yy) + (80 * i), menu[i], c_white, 1, c_black, 0.6, 4, -45);
		}
		
		draw_sprite(sSound, sound, 10, 10 - yy);
		
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], selectCol, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], c_gray, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
			draw_set_valign(fa_top);
		#endregion
		
		if(yy < 2)
		{
			state = menuState.main;
			yy = 0;
		}
	break;
	
	// =====[CASE - LEVELS]=====
	case menuState.levels:
		xx = Approach(xx, 0, abs(0 - xx) / 10);
		scale1 = Approach(scale1, 1, (1 - scale1) / 10);
		scale2 = Approach(scale2, 0.7, (scale2 - 0.7) / 10);
		scale3 = Approach(scale3, 0.7, (scale3 - 0.7) / 10);
		
		//draw_rectangle(300, 100, 980, 480, true);
	
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 580, level[Wrap(select-2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 580, level[Wrap(select-2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 580, level[Wrap(select-1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 580, level[Wrap(select-1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 580, level[select,1], selectCol, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 580, level[select,1], c_gray, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 580, level[Wrap(select+1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 580, level[Wrap(select+1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 580, level[Wrap(select+2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 580, level[Wrap(select+2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
			draw_set_valign(fa_top);
		#endregion
	break;
	
	// =====[CASE - TO LEVELS]=====
	case menuState.toLevels:
		yy = Approach(yy, 720, (720 - yy) / 10);
		
		DrawTextShadowTransformed(640, (30 - yy), "The Cave\nof the\nRainbow Snake", c_white, 1, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadow(640, (menuY - yy) + (80 * i), menu[i], selectCol, 1, c_black, 0.6, 4, -45);
			else
				DrawTextShadow(640, (menuY - yy) + (80 * i), menu[i], c_white, 1, c_black, 0.6, 4, -45);
		}
		
		draw_sprite(sSound, sound, 15, 15 - yy);
		
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], selectCol, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], c_gray, 1, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_white, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_gray, 1, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
			draw_set_valign(fa_top);
		#endregion
		
		if(yy > 718)
		{
			state = menuState.levels;
			select = 0;
			yy = 720;
		}
	break;
}

draw_set_halign(fa_left);