// check to se if mouse is clicking on this object
if (hover && mouse_check_button_pressed(mb_left)) {
	if (tabToSwitchTo != noone) {
		switchMenuTab(tabToSwitchTo);
	} else if (roomToGoTo != noone) {
		goToRoom(roomToGoTo);
	}
}