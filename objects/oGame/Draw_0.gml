// draw item on mouse if it has one

if (global.mouseInventory[0, 3] != noone) {
	draw_sprite_ext(global.mouseInventory[0, 3], 0, mouse_x, mouse_y, 2, 2, image_angle, c_white, 1);
	
	glow(8, global.mouseInventory[0, 3], global.mouseInventory[0, 2], mouse_x, mouse_y);
}