// follow player
x += oPlayer.horizontalSpeed;
y += oPlayer.verticalSpeed;


if (hover && mouse_check_button_pressed(mb_left)) {
	if (!global.mouseHasItem) {
		global.mouseHasItem = true;
		global.mouseItem = id;
		
		//copy item to mouse inv
		for( i = 0; i < 10; i++) {
			global.mouseInventory[0, i] = global.inventory[placeInArray, i];
		}
	} else {
		global.mouseHasItem = false;
		
		// switch items with previously clicked object
		for( i = 0; i < 10; i++) {
			global.inventory[global.mouseItem.placeInArray, i] = global.inventory[placeInArray, i];
		}
		for( i = 0; i < 10; i++) {
			global.inventory[placeInArray, i] = global.mouseInventory[0, i];
		}
		
		// reset mouse inv
		for( i = 0; i < 10; i++) {
			global.mouseInventory[0, i] = 0;
		}
	}
}