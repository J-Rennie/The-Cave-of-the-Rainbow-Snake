switch(state)
{
	// =====[CASE DROPPED]=====
	case boomState.dropped:
		image_angle = 45;
	
		y = Wave(wy + 1, wy - 1, 5, 0);
		if(oPlayer.keyInteract && distance_to_object(oPlayer) < 12)
		{
			state = boomState.held;
			image_index = 0;
		}
	break;
	
	// =====[CASE HELD]=====
	case boomState.held:
		x = oPlayer.x;
		y = oPlayer.y;
		
		image_angle = point_direction(x, y, mouse_x, mouse_y);
	break;
}