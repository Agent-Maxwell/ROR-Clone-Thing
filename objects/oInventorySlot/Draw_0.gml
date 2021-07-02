if (hover) {
	image_index = 1;
} else if (global.mouseItem = id) {
	image_index = 2;
} else {
	image_index = 0;
}

draw_self()

// display item
if (slotArray[placeInArray, 3] != noone) {
	
	//make item transparent if held
	if (global.mouseItem = id) {
		draw_sprite_ext(slotArray[placeInArray, 3], 0, x, y, 2, 2,image_angle, c_white, 0.5);
	} else {
		draw_sprite_ext(slotArray[placeInArray, 3], 0, x, y, 2, 2,image_angle, c_white, 1);
	}
	
	glow(8, slotArray[placeInArray, 3], slotArray[placeInArray, 2], x, y);
}