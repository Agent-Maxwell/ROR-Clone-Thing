draw_set_halign(fa_center);

if (paused) {
    draw_sprite_ext(freezeFrame,0,0,0,1,1,0,c_white,1);
	draw_text(100, 10, "Paused");
}

if (inventoryOpen) {
		draw_text(100, 10, "Inventory Open");
}