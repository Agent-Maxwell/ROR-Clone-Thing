// draw item on mouse if it has one

if (global.mouseInventory[0, 3] != 0 && global.mouseInventory[0, 3] != noone) {
	draw_sprite(global.mouseInventory[0, 3], 0, mouse_x, mouse_y);
}