switch(state)
{
	case fadeState.inc:
		alpha += 0.01;
		
		if(alpha == 1)
		{
			state = fadeState.dec;
			room_goto_next();
		}
	break;
	
	case fadeState.dec:
		alpha -= 0.01;
		
		if(alpha == 0)
			instance_destroy(oFade);
	break;
}