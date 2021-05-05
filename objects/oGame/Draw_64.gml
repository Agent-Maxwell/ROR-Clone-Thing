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
			var mySlot = instance_create_layer(oPlayer.x + (sprite_get_width(sInventorySlot) * i), oPlayer.y - 200, "Inventory", oInventorySlot);
			
			mySlot.slotArray = global.inventory;
			mySlot.placeInArray = i;

		}
	}
		invSlotsDrawn = true;
}