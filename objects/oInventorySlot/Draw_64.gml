//show item stats
if ((hover || global.mouseItem = id) && slotArray[@ placeInArray, 0] != noone) {
	var statsY = 550;
	var statsX = 900;
	
	createStatsDisplay(statsX, statsY, 100, 200);
	
	draw_set_font(fInvFontHeader)
	draw_text(statsX, statsY - 40, slotArray[@ placeInArray, 0]);
	
	draw_set_font(fInvFont);
	draw_text(statsX, statsY, slotArray[@ placeInArray, 9]);
}