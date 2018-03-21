switch(state)
{
	case boomState.dropped:
		sa = Wave(1, 0.8, 5, 0);
		draw_sprite_ext(sShadow, -1, x, wy + 12, sa, sa, 0, c_white, 1);
		draw_self();
	
		if(distance_to_object(oPlayer) < 12)
			image_index = 1;
		else
			image_index = 0;
	break;
	
	case boomState.held:
		draw_self();
		draw_sprite_ext(sPlayerHand, -1, x, y, 1, 1, image_angle, c_white, 1);
	break;
}