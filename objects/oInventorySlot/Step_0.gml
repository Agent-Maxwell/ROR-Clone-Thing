// follow player
x += oPlayer.horizontalSpeed;
y += oPlayer.verticalSpeed;

// move items around
if (hover && mouse_check_button_pressed(mb_left)) {
	if (!global.mouseHasItem) {
		global.mouseHasItem = true;
		global.mouseItem = id;
		
		//copy item to mouse inv
		for( i = 0; i < 10; i++) {
			global.mouseInventory[0, i] = slotArray[placeInArray, i];
		}
	} else {
		
		
		//check to see if we need to make sure the item is going in the right slot
		if (slotArray = oPlayer.currentWeapon.weaponInventory) {
			if (placeInArray = global.mouseInventory[0, 1]) {
				for( i = 0; i < 10; i++) {
					global.mouseItem.slotArray[global.mouseItem.placeInArray, i] = slotArray[placeInArray, i];
				}
				for( i = 0; i < 10; i++) {
					slotArray[placeInArray, i] = global.mouseInventory[0, i];
				}
		
				// reset mouse inv
				for( i = 0; i < 10; i++) {
					global.mouseInventory[0, i] = 0;
					global.mouseItem = noone;
					global.mouseHasItem = false;
				}
			}
			
		} else {
		// switch items with previously clicked object
		for( i = 0; i < 10; i++) {
			global.mouseItem.slotArray[global.mouseItem.placeInArray, i] = slotArray[placeInArray, i];
		}
		for( i = 0; i < 10; i++) {
			slotArray[placeInArray, i] = global.mouseInventory[0, i];
		}
		
		// reset mouse inv
		for( i = 0; i < 10; i++) {
			global.mouseInventory[0, i] = 0;
			global.mouseItem = noone;
			global.mouseHasItem = false;
		}
		}
	}
}