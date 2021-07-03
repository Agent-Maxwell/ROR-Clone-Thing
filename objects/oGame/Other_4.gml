if (room = rmMainMenu) {
	// deactivate persistant objects
	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oWeapon);
	
	// draw initial menu
	switchMenuTab("main")
} else {
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
}

// make sure pause stuff is reset
paused = false;
freezeFrameObject = noone;
freezeFrame = noone;