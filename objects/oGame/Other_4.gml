if (room = rmMainMenu) {
	// deactivate persistant objects
	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oWeapon);
	
	// draw initial menu
	buttonStart = instance_create_layer(650, 250, "MenuButtons", oMenuButton);
	buttonStart.buttonText = "Start Game";
	buttonStart.roomToGoTo = Room1;
} else {
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
}
