enum playerState
{
	idle
}

enum boomState
{	
	dropped,
	held,
	thrown,
	returning
}

enum menuState
{
	start,
	main,
	levels,
	toLevels,
	fromLevels
}

enum fadeState
{
	inc,
	dec
}

audio_group_load(agSFX);
audio_group_load(agMusic);