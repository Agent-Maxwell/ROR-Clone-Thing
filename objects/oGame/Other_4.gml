// set player start positions
switch room {
	case Room1:
		var playerStartX = 100;
		var	playerStartY = 700;
	break
	
	case lvlFloatingRock:
		var playerStartX = 320;
		var	playerStartY = 570;
	break
}


if (room = rmMainMenu) {
	// deactivate persistant objects
	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oWeapon);
	
	// draw initial menu
	switchMenuTab("main");
} else {
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
	oPlayer.x = playerStartX;
	oPlayer.y = playerStartY;
}

// make sure pause stuff is reset
paused = false;
freezeFrameObject = noone;
freezeFrame = noone;