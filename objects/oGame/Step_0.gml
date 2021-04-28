escPressed = keyboard_check_pressed(vk_escape);
tabPressed = keyboard_check_pressed(vk_tab);

//pause game
if (escPressed && !inventoryOpen) {
	paused = !paused;
	
	// create freezeframe of current room
	 if(!sprite_exists(freezeFrame)){
        freezeFrame = sprite_create_from_surface(application_surface,0,0,RES.WIDTH,RES.HEIGHT,0,0,0,0);
	}
	// if the inventory is open and esc is pressed, close inventory
    } else if (escPressed && inventoryOpen) {
		inventoryOpen = !inventoryOpen;
		
	// make it so you cant shoot
	with (oPlayer.currentWeapon) {
		weaponIsActive = !weaponIsActive;
	}
}

if (paused) {
	instance_deactivate_all(1);
} else {
	
	if(sprite_exists(freezeFrame)){
        sprite_delete(freezeFrame);
    }
	
	instance_activate_all();
}


// open inventory
if (tabPressed && !paused) {
	inventoryOpen = !inventoryOpen;
	
	// make it so you cant shoot
	with (oPlayer.currentWeapon) {
		weaponIsActive = !weaponIsActive;
	}
	
	// draw inventory slots
}

