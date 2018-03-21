#region // key variables
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyUp = keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));
	keyInteract = keyboard_check_pressed(ord("E"));
#endregion

#region // horizontal collision and movement
	hsp = Approach(hsp, (keyRight - keyLeft) * walkSp, 1);
	//TileCollisionH(tsCollision, hsp);
	x += hsp;
#endregion

#region // vertical collision and movement
	vsp = Approach(vsp, (keyDown - keyUp) * walkSp, 1);
	//TileCollisionV(tsCollision, vsp);
	y += vsp;
#endregion