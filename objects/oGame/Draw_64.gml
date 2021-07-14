draw_set_halign(fa_center);

if (paused) {
	draw_text(100, 10, "Paused");
}

if (inventoryOpen) {
	draw_text(100, 10, "Inventory Open");
	
	// draw inventory slots, but only if they havent already been drawn
	if (!invSlotsDrawn) {
		for (i = 0; i < array_length(global.inventory); i++) {
			var mySlot = instance_create_layer((camera_get_view_x(view_camera[0]) + view_wport[0] * 0.2) + (sprite_get_width(sInventorySlot) * i), camera_get_view_y(view_camera[0]) + view_hport[0] * 0.7, "Inventory", oInventorySlot);
			
			mySlot.xOffset = (sprite_get_width(sInventorySlot) * i) - (view_wport[0] * 0.3);
			mySlot.yOffset = view_hport[0] * 0.2
			mySlot.slotArray = global.inventory;
			mySlot.placeInArray = i;

		}
	}
	invSlotsDrawn = true;
		
	// draw stats display
	var statsX = 900;
	var statsY = 350;
	draw_set_font(fInvFontHeader)
	
	
	createStatsDisplay(statsX, statsY, 250, 200)
	draw_text(statsX, statsY - 110, oPlayer.currentWeapon.weaponName);
	
	// kind of janky but im changing the font to make the other things smaller
	draw_set_font(fInvFont);
	
	draw_text(statsX, statsY - 90, "Ammo: " + string(oPlayer.currentWeapon.weaponAmmotype));
	draw_text(statsX, statsY - 70, "Damage: " + string(oPlayer.currentWeapon.projectileDamage + oPlayer.currentWeapon.itemDamageChangeAmount));
	draw_text(statsX, statsY - 50, "Max Spread: " + string((oPlayer.currentWeapon.projectileSpreadAmount + oPlayer.currentWeapon.itemSpreadChangeAmount) *2));
	draw_text(statsX, statsY - 30, "Projectile Speed: " + string((oPlayer.currentWeapon.maxProjectileSpeed + oPlayer.currentWeapon.itemSpeedChangeAmount) - oPlayer.currentWeapon.projectileSpeedSubtractor) + "-" + string(oPlayer.currentWeapon.maxProjectileSpeed + oPlayer.currentWeapon.itemSpeedChangeAmount));
	//draw_text(statsX, statsY - 120, ": " + string(oPlayer.currentWeapon.));
	
	// draw large weapon sprite with inventory slots
	weaponX = 400;
	weaponY = 400;
	
	draw_sprite(oPlayer.currentWeapon.weaponLargeSprite, 0, weaponX, weaponY);
	
		if (!weaponInvSlotsDrawn) {
		for (i = 0; i < array_length(oPlayer.currentWeapon.weaponInventory); i++) {
			global.weaponSlotArray[@ i] = instance_create_layer(camera_get_view_x(view_camera[0]) + oPlayer.currentWeapon.weaponSlotSpots[i, 0], camera_get_view_x(view_camera[0]) + oPlayer.currentWeapon.weaponSlotSpots[i, 1], "Inventory",  oInventorySlot);
			
			global.weaponSlotArray[@ i].xOffset = oPlayer.currentWeapon.weaponSlotSpots[i, 0];
			global.weaponSlotArray[@ i].yOffset = oPlayer.currentWeapon.weaponSlotSpots[i, 1];
			global.weaponSlotArray[@ i].slotArray = oPlayer.currentWeapon.weaponInventory;
			global.weaponSlotArray[@ i].placeInArray = i;

		}
	}
		weaponInvSlotsDrawn = true;
	
}