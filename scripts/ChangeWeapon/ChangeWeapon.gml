function ChangeWeapon(up, down){
	
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
	}

	// create new weapon and destroy the old one unless the new one is same as old
	if (instance_exists(oWeapon) && !instance_exists(global.playerWeapons[newListPosition, 0])) {
		instance_destroy(oWeapon);		
	}
	if (!instance_exists(global.playerWeapons[newListPosition, 0])) {
		currentWeapon = global.playerWeapons[newListPosition, 0];
		instance_create_layer(x, y, "Weapons", global.playerWeapons[newListPosition, 0]);
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