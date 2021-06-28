escPressed = keyboard_check_pressed(vk_escape);
tabPressed = keyboard_check_pressed(vk_tab);

//pause game
if (escPressed && !inventoryOpen) {
	togglePaused();

	// if the inventory is open and esc is pressed, close inventory
    } else if (escPressed && inventoryOpen) {
		toggleInventory();
}

// open inventory
if (tabPressed && !paused) {
	toggleInventory();
}

if (inventoryOpen && instance_exists(oInventorySlot)) {

// drop item
if (!position_meeting(mouse_x, mouse_y, oInventorySlot) && mouse_check_button_pressed(mb_left) &&  global.mouseInventory[0, 0] != noone) {
	spawnSpecificItem(mouse_x, mouse_y, global.mouseInventory[0, 0], global.mouseInventory[0, 1], global.mouseInventory[0, 2], global.mouseInventory[0, 3], global.mouseInventory[0, 4], global.mouseInventory[0, 5], global.mouseInventory[0, 6], global.mouseInventory[0, 7], global.mouseInventory[0, 8], global.mouseInventory[0, 9], global.mouseInventory[0, 10], global.mouseInventory[0, 11]);
	
	// remove item from inventory
	for( i = 0; i < global.inventoryLength; i++) {
		global.mouseItem.slotArray[@ global.mouseItem.placeInArray, i] = noone;
	}
	
	// reset mouse inv
	for( i = 0; i < global.inventoryLength; i++) {
		global.mouseInventory[@ 0, i] = noone;
		global.mouseItem = noone;
		global.mouseHasItem = false;
	}
}
}

