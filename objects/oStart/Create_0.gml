select = 0;

state = menuState.start;

xx = 0;
yy = 0;
alpha = 1.4;
titleAlpha = 0;
menuAlpha = 0;
titleScale = 1.55;
menuScale = 0.85;

scale1 = 1;
scale2 = 0.7;
scale3 = 0.7;

ini_open("savegame.sav");
 	#region // level array
		level[3,3] = rTjukurrpa;
		level[3,2] = ini_read_real("levels", "tjukurrpa", false); // is level unlocked
		level[3,1] = "Tjukurrpa"; // level name
		level[3,0] = sTjukurrpa; // level thumbnail

		level[2,3] = rGurduk;
		level[2,2] = ini_read_real("levels", "gurduk", false); // is level unlocked
		level[2,1] = "Gurduk"; // level name
		level[2,0] = sGurduk; // level thumbnail

		level[1,3] = rNgama;
		level[1,2] = ini_read_real("levels", "ngama", false); // is level unlocked
		level[1,1] = "Ngama"; // level name
		level[1,0] = sNgama; // level thumbnail

		level[0,3] = rWarlukurlangu;
		level[0,2] = ini_read_real("levels", "warlukurlangu", true); // is level unlocked
		level[0,1] = "Warlukurlangu"; // level name
		level[0,0] = sWarlukurlangu; // level thumbnail

		lLength = array_height_2d(level);
		
		currentLevel = level[ini_read_real("levels", "current level", 0),3];
	#endregion
	
	#region // menu array
		menu[2] = "QUIT";
		menu[1] = "LEVELS";
		
		if(ini_read_real("levels", "played", false))
			menu[0] = "CONTINUE";
		else
			menu[0] = "PLAY";
		
		mLength = array_length_1d(menu);
		menuY = 640 - (80 * (mLength - 1));
	#endregion
	
	sound = ini_read_real("options", "sound", 1);
	audio_group_set_gain(agSFX, sound, 0);
	audio_group_set_gain(agMusic, sound, 0);
ini_close();