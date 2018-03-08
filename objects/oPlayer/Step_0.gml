#region // key variables
	keyLeft = keyboard_check(vk_left);
	keyRight = keyboard_check(vk_right);
	keyUp = keyboard_check(vk_up);
	keyDown = keyboard_check(vk_down);
	keyInteract = keyboard_check_pressed(ord("E"));
#endregion

switch(state)
{
	//=====[CASE IDLE]=====
	case playerState.idle:
	// calculate movement
		hMove = keyRight - keyLeft;
		vMove = keyDown - keyUp;

		hsp = hMove * walkSp;
		vsp = vMove * walkSp;
		
		#region // player direction
			switch(facing)
			{
				// =====[FACING DOWN]=====
				case "down":
					// check if player is walking
					if(vsp = 0)
						sprite_index = sPlayerDownIdle;
					else
					{
						var frame = image_index;
						sprite_index = sPlayerDownWalk;
						image_index = frame;
					}
			
					// change facing to same direction as key pressed unless down is still being held
					if(keyUp && !keyDown) 
						facing = "up";
					else if(keyLeft && !keyDown) 
						facing = "left";
					else if(keyRight && !keyDown)
						facing = "right";
				break;
		
				// =====[FACING UP]=====
				case "up":
					// check if player is walking
					if(vsp = 0)
						sprite_index = sPlayerUpIdle;
					else
					{
						var frame = image_index;
						sprite_index = sPlayerUpWalk;
						image_index = frame;
					}
			
					// change facing to same direction as key pressed unless up is still being held
					if(keyDown && !keyUp)
						facing = "down";
					else if(keyLeft && !keyUp)
						facing = "left";
					else if(keyRight && !keyUp)
						facing = "right";
				break;
		
				// =====[FACING LEFT]=====
				case "left":
					// check if player is  walking
					if(hsp = 0)
						sprite_index = sPlayerLeftIdle;
					else
					{
						var frame = image_index;
						sprite_index = sPlayerLeftWalk;
						image_index = frame;
					}
			
					// change facing to same direction as key pressed unless left is still being held
					if(keyDown && !keyLeft)
						facing = "down";
					else if(keyUp && !keyLeft)
						facing = "up";
					else if(keyRight && !keyLeft)
						facing = "right";
				break;
		
				// =====[FACING RIGHT]=====
				case "right":
					// check if player is  walking
					if(hsp = 0)
						sprite_index = sPlayerRightIdle;
					else
					{
						var frame = image_index; 
						sprite_index = sPlayerRightWalk;
						image_index = frame;
					}
			
					// change facing to same direction as key pressed unless right is still being held
					if(keyDown && !keyRight)
						facing = "down";
					else if(keyUp && !keyRight)
						facing = "up";
					else if(keyLeft && !keyRight)
						facing = "left";
				break;
			}
		#endregion
	
	// change state
		if(keyInteract && distance_to_object(oNPC) < 30)
		{
			hsp = 0;
			vsp = 0;
			
			var pDir = point_direction(x, y, oNPC.x, oNPC.y);
			if(Within(pDir, -45, 45))
				sprite_index = sPlayerRightIdle;
			else if(Within(pDir, 45, 135))
				sprite_index = sPlayerUpIdle;
			else if(Within(pDir, 135, 225))
				sprite_index = sPlayerLeftIdle;
			else
				sprite_index = sPlayerDownIdle;
				
			oCamera.follow = noone;
			oCamera.cx = GetCentreX(x, oNPC.x);
			oCamera.cy = GetCentreY(y, oNPC.y) + 5;
			oCamera.cw = 128;
			oCamera.ch = 72;
			
			state = playerState.talk;
			oNPC.state = npcState.talk;
		}
	break;
	
	//=====[CASE TALK]=====
	case playerState.talk:
		if(keyInteract && distance_to_object(oNPC) < 30)
		{
			oCamera.follow = oPlayer;
			
			state = playerState.idle;
			oNPC.state = npcState.idle;
		}
	break;
}

#region //collision
	// horizontal collision
	if(place_meeting(x + hsp, y, oWall))
		while(!place_meeting(x + sign(hsp), y, oWall))
			x += sign(hsp);

	// vertical collision
	if(place_meeting(x, y + vsp, oWall))
		while(!place_meeting(x, y + sign(vsp), oWall))
			y += sign(vsp);
	
	depth = -y;
#endregion
