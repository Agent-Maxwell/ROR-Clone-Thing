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

//show item stats
if ((hover || global.mouseItem = id) && slotArray[@ placeInArray, 0] != noone) {
	var statsY = y + 80;
	
	createStatsDisplay(x, statsY, 100, 200);
	
	draw_set_font(fInvFontHeader)
	draw_text(x, statsY - 40, slotArray[@ placeInArray, 0]);
	
	draw_set_font(fInvFont);
	draw_text(x, statsY - 20, slotArray[@ placeInArray, 9]);
}