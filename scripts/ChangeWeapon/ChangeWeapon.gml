function ChangeWeapon(up, down){
	
	currentListPosition = 1;
	newListPosition = 1;
	
	// find current position
	for(i = 1; i < array_length(global.playerWeapons); i++) {
		if (global.playerWeapons[i] = currentWeapon) {
			currentListPosition = i;
		}
	}

	
	//go to next weapon (and make sure we have it)
	if (up) {
	newListPosition = currentListPosition + 1;
	scrollWeaponListUp()
	} else if (down) {
	newListPosition = currentListPosition -s 1;
	scrollWeaponListDown()
	}
	
	// create new weapon and destroy the old one
	if (instance_exists(oWeapon)) {
		instance_destroy(oWeapon);
	}
	
	currentWeapon = global.playerWeapons[newListPosition];
	show_debug_message(currentWeapon);
	instance_create_layer(x, y, "Instances", global.playerWeapons[newListPosition]);
	
}
	
function scrollWeaponListUp() {
	if (newListPosition >= array_length(global.playerWeapons)) {
		newListPosition = 1;
	//} else if (global.playerWeapons[newListPosition, 1] = false){
	//	newListPosition++;
	//	scrollWeaponListUp()
	}
}

function scrollWeaponListDown() {
	if (currentListPosition - 1 < 1) {
		newListPosition = array_length(global.playerWeapons) - 1;
	//} else if (global.playerWeapons[newListPosition, 1] = false){
	//	newListPosition--;
	//	scrollWeaponListDown()
	}
}