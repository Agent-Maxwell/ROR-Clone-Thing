draw_set_halign(fa_center);

if (paused) {
    draw_sprite_ext(freezeFrame,0,0,0,1,1,0,c_white,1);
	draw_text(100, 10, "Paused");
}

if (inventoryOpen) {
	draw_text(100, 10, "Inventory Open");
	
	// draw inventory slots, but only if they havent already been drawn
	if (!invSlotsDrawn) {
		for (i = 0; i < array_length(global.inventory); i++) {
			var mySlot = instance_create_layer(oPlayer.x - 224 + (sprite_get_width(sInventorySlot) * i), oPlayer.y - 150, "Inventory", oInventorySlot);
			
			mySlot.slotArray = global.inventory;
			mySlot.placeInArray = i;

		}
	}
		invSlotsDrawn = true;
		
	// draw stats display
	statsX = 900;
	statsY = 350 + (oPlayer.y - playerStartingYPos);
	draw_set_font(fInvFontHeader)
	
	draw_sprite(sStatsDisplay, 0, statsX, statsY);
	draw_text(statsX, statsY - 120, oPlayer.currentWeapon.weaponName);
	
	// kind of janky but im changing the font to make the other things smaller
	draw_set_font(fInvFont);
	
	draw_text(statsX, statsY - 100, "Ammo: " + string(oPlayer.currentWeapon.weaponAmmotype));
	draw_text(statsX, statsY - 80, "Damage: " + string(oPlayer.currentWeapon.projectileDamage));
	draw_text(statsX, statsY - 60, "Max Spread: " + string(oPlayer.currentWeapon.projectileSpreadAmount*2));
	draw_text(statsX, statsY - 40, "Projectile Speed: " + string(oPlayer.currentWeapon.minProjectileSpeed) + "-" + string(oPlayer.currentWeapon.maxProjectileSpeed));
	//draw_text(statsX, statsY - 120, ": " + string(oPlayer.currentWeapon.));
	
	// draw large weapon sprite with inventory slots
	weaponX = 400;
	weaponY = 400 + (oPlayer.y - playerStartingYPos);
	
	draw_sprite(oPlayer.currentWeapon.weaponLargeSprite, 0, weaponX, weaponY);
	
		if (!weaponInvSlotsDrawn) {
		for (i = 0; i < array_length(oPlayer.currentWeapon.weaponInventory); i++) {
			global.weaponSlotArray[@ i] = instance_create_layer(oPlayer.x + oPlayer.currentWeapon.weaponSlotSpots[i, 0], oPlayer.y + oPlayer.currentWeapon.weaponSlotSpots[i, 1], "Inventory",  oInventorySlot);
			
			global.weaponSlotArray[@ i].slotArray = oPlayer.currentWeapon.weaponInventory;
			global.weaponSlotArray[@ i].placeInArray = i;

		}
	}
		weaponInvSlotsDrawn = true;
	
}