walkSp = 4; // the players walk speed

facing = "down";	// stores which direction the player is facing

tilemap = layer_tilemap_get_id("tCollisions"); // the tilemap that will be used for collisions

state = playerState.idle; // sets the players state to idle

global.playerName = "";