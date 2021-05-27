function ChangeWeapon(up, down, number){
	
	// if switch weapons while inv open zero out mouse inventory and destroy weapon slots
	if (oGame.inventoryOpen) {
		// reset mouse inv
		for( i = 0; i < global.inventoryLength; i++) {
			global.mouseInventory[0, i] = 0;
			global.mouseItem = noone;
			global.mouseHasItem = false;
		}
		// destroy active weapon slots
		for(i = 0; i < array_length(global.weaponSlotArray); i++) {
			instance_destroy(global.weaponSlotArray[i]);
			global.weaponSlotArray[i] = noone;
		}
		oGame.weaponInvSlotsDrawn = false;
	}
	
	currentListPosition = 1;
	newListPosition = 1;
	
	// find current position
	for(i = 1; i < array_length(global.playerWeapons); i++) {
		if (global.playerWeapons[i, 0] = currentWeapon) {
			currentListPosition = i;
		}
	}
	
	//go to next weapon (and make sure we have it)
	if (up) {
		newListPosition = currentListPosition + 1;
		scrollWeaponListUp()
	} else if (down) {
		newListPosition = currentListPosition - 1;
		scrollWeaponListDown()
	} else {
		goToSpecificWeapon(number);
	}

	// make the weapon we are switching to active and visible
	with(global.playerWeapons[currentListPosition, 0]) {
		weaponIsActive = false;
		image_alpha = 0;
	}
	show_debug_message(currentListPosition)
	show_debug_message(newListPosition)
	with(global.playerWeapons[newListPosition, 0]) {
		weaponIsActive = true;
		image_alpha = 1;
	}
	currentWeapon = global.playerWeapons[newListPosition, 0];
	
	if (oGame.inventoryOpen) {
		currentWeapon.weaponIsActive = false;
	}
	
}
	
function scrollWeaponListUp() {
	if (newListPosition >= array_length(global.playerWeapons)) {
		newListPosition = 1;
	}
	if (global.playerWeapons[newListPosition, 1] = false){
		newListPosition++;
		scrollWeaponListUp()
	}
}

function scrollWeaponListDown() {
	if (newListPosition < 1) {
		newListPosition = array_length(global.playerWeapons) - 1;
	}
	if (global.playerWeapons[newListPosition, 1] = false){
		newListPosition--;
		scrollWeaponListDown()
	}
}

function goToSpecificWeapon(newWeapon) {
	if (newWeapon != noone && newWeapon <  array_length(global.playerWeapons) && newWeapon > 0 && global.playerWeapons[newWeapon, 1] = true) {
		newListPosition = newWeapon;
	}
}