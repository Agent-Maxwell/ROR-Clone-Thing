// stay in center of screen
x = camera_get_view_x(view_camera[0]) + view_wport[0] * 0.5 + xOffset;
y = camera_get_view_y(view_camera[0]) + view_hport[0] * 0.5 + yOffset;

// move items around

// check to se if mouse is clicking on this object
if (hover && mouse_check_button_pressed(mb_left)) {
	
	//check if the object even has an item, if yes grab it
	if (!global.mouseHasItem) {
		if (slotArray[placeInArray, 0] != noone) {
			global.mouseHasItem = true;
			global.mouseItem = id;
		
			//copy item to mouse inv
			for( i = 0; i < global.inventoryLength; i++) {
				global.mouseInventory[@ 0, i] = slotArray[@ placeInArray, i];
			}	
		}
	// if we already have a grabbed object, then switch it
	} else {
		//check to see if we need to make sure the item is going in the right slot
		
		// if we are moving to a weapon inventory
		if (slotArray = oPlayer.currentWeapon.weaponInventory) {
			// if the mouses item is the correct type for this slot
			if (placeInArray = global.mouseInventory[0, 1]) {
				for( i = 0; i < global.inventoryLength; i++) {
					global.mouseItem.slotArray[@ global.mouseItem.placeInArray, i] = slotArray[@ placeInArray, i];
				}
				for( i = 0; i < global.inventoryLength; i++) {
					slotArray[@ placeInArray, i] = global.mouseInventory[@ 0, i];
				}
		
				// reset mouse inv
				for( i = 0; i < global.inventoryLength; i++) {
					global.mouseInventory[@ 0, i] = noone;
					global.mouseItem = noone;
					global.mouseHasItem = false;
				}
			}
			
		// if we are moving from a weapon inventory
		} else if (global.mouseItem.slotArray = oPlayer.currentWeapon.weaponInventory) {
			// if we are holding an item with the correct slot type or are empty
			if (slotArray[@ placeInArray, 1] = global.mouseInventory[@ 0, 1] || slotArray[@ placeInArray, 0] = noone) {
				for( i = 0; i < global.inventoryLength; i++) {
					global.mouseItem.slotArray[@ global.mouseItem.placeInArray, i] = slotArray[@ placeInArray, i];
				}
				for( i = 0; i < global.inventoryLength; i++) {
					slotArray[@ placeInArray, i] = global.mouseInventory[@ 0, i];
				}
		
				// reset mouse inv
				for( i = 0; i < global.inventoryLength; i++) {
					global.mouseInventory[@ 0, i] = noone;
					global.mouseItem = noone;
					global.mouseHasItem = false;
				}
			}
			
		} else {
			
		// switch items with previously clicked object
		for( i = 0; i < global.inventoryLength; i++) {
			global.mouseItem.slotArray[@ global.mouseItem.placeInArray, i] = slotArray[@ placeInArray, i];
		}
		for( i = 0; i < global.inventoryLength; i++) {
			slotArray[@ placeInArray, i] = global.mouseInventory[@ 0, i];
		}
		
		// reset mouse inv
		for( i = 0; i < global.inventoryLength; i++) {
			global.mouseInventory[@ 0, i] = noone;
			global.mouseItem = noone;
			global.mouseHasItem = false;
		}
		}
	}
	
}
