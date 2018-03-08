draw_set_font(fMenu);
draw_set_halign(fa_center);

var b = Wave(255, 103, 1.5, 0);
var selectCol = make_color_rgb(255, 255, b);

switch(state)
{
	case menuState.start:
		scale = Approach(scale, 1, (1 - scale) / 20);
	
		DrawTextShadowTransformed(640, 30, "The Cave\nof the\nRainbow Snake", c_white, c_black, 0.6, 8, -45, scale + 0.6, scale + 0.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadowTransformed(640, 560 + (80 * i), menu[i], selectCol, c_black, 0.6, 4, -45, scale, scale, 0);
			else
				DrawTextShadowTransformed(640, 560 + (80 * i), menu[i], c_white, c_black, 0.6, 4, -45, scale, scale, 0);
		}
		
		draw_set_color(c_black);
		alpha = Approach(alpha, 0, 0.01);
		draw_set_alpha(alpha);
		draw_rectangle(0, 0, 1280, 720, false);
		draw_set_alpha(1);
		draw_set_colour(c_white);
		
		if(alpha < 0.08)
			state = menuState.main;
	break;
	
	case menuState.main:
		DrawTextShadowTransformed(640, 30, "The Cave\nof the\nRainbow Snake", c_white, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadow(640, 560 + (80 * i), menu[i], selectCol, c_black, 0.6, 4, -45);
			else
				DrawTextShadow(640, 560 + (80 * i), menu[i], c_white, c_black, 0.6, 4, -45);
		}
	break;
	
	case menuState.toMain:
		yy = Approach(yy, 0, (yy - 0) / 10);
	
		DrawTextShadowTransformed(640, (30 - yy), "The Cave\nof the\nRainbow Snake", c_white, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadow(640, (560 - yy) + (80 * i), menu[i], selectCol, c_black, 0.6, 4, -45);
			else
				DrawTextShadow(640, (560 - yy) + (80 * i), menu[i], c_white, c_black, 0.6, 4, -45);
		}
		
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], selectCol, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], c_gray, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
			draw_set_valign(fa_top);
		#endregion
		
		if(yy < 2)
		{
			state = menuState.main;
			yy = 0;
		}
	break;
	
	case menuState.levels:
		xx = Approach(xx, 0, abs(0 - xx) / 10);
		scale1 = Approach(scale1, 1, (1 - scale1) / 10);
		scale2 = Approach(scale2, 0.7, (scale2 - 0.7) / 10);
		scale3 = Approach(scale3, 0.7, (scale3 - 0.7) / 10);
	
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 580, level[Wrap(select-2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 580, level[Wrap(select-2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 580, level[Wrap(select-1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 580, level[Wrap(select-1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 580, level[select,1], selectCol, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 580, level[select,1], c_gray, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 580, level[Wrap(select+1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 580, level[Wrap(select+1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 580, level[Wrap(select+2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 580, level[Wrap(select+2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
			draw_set_valign(fa_top);
		#endregion
	break;
	
	case menuState.toLevels:
		yy = Approach(yy, 720, (720 - yy) / 10);
		
		DrawTextShadowTransformed(640, (30 - yy), "The Cave\nof the\nRainbow Snake", c_white, c_black, 0.6, 8, -45, 1.6, 1.6, 0);

		for(var i = 0; i <= mLength - 1; i++)
		{
			if(select == i)
				DrawTextShadow(640, (560 - yy) + (80 * i), menu[i], selectCol, c_black, 0.6, 4, -45);
			else
				DrawTextShadow(640, (560 - yy) + (80 * i), menu[i], c_white, c_black, 0.6, 4, -45);
		}
		
		#region // level text
			draw_set_valign(fa_middle);
			
			if(level[Wrap(select-2, 0, 3),2])
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(-440 + xx, 1300 - yy, level[Wrap(select-2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			
			if(level[Wrap(select-1, 0, 3),2])
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale2, scale2, 0);
			else
				DrawTextShadowTransformed(140 + xx, 1300 - yy, level[Wrap(select-1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale2, scale2, 0);
			
			if(level[select,2])
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], selectCol, c_black, 0.6, 4, -45, scale1, scale1, 0);
			else
				DrawTextShadowTransformed(640 + xx, 1300 - yy, level[select,1], c_gray, c_black, 0.6, 4, -45, scale1, scale1, 0);
			
			if(level[Wrap(select+1, 0, 3),2])
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_white, c_black, 0.6, 4, -45, scale3, scale3, 0);
			else
				DrawTextShadowTransformed(1140 + xx, 1300 - yy, level[Wrap(select+1, 0, 3),1], c_gray, c_black, 0.6, 4, -45, scale3, scale3, 0);
			
			if(level[Wrap(select+2, 0, 3),2])
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_white, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
			else
				DrawTextShadowTransformed(1640 + xx, 1300 - yy, level[Wrap(select+2, 0, 3),1], c_gray, c_black, 0.6, 4, -45, 0.7, 0.7, 0);
		
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