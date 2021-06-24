// check if room is menu, if yes deactivate stuff

if (room = rmMainMenu) {
	instance_deactivate_object(oPlayer);
	instance_deactivate_object(oWeapon);
} else {
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
}
