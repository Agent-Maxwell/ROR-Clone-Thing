// draw inventory items
var margin = 5;

for (var i = 0; i < ds_list_size(global.inventory); i++) {
	var myItem = global.inventory[| i];
	
	
	// find drawing coordinates
	var xOffset = sprite_get_xoffset(myItem.sprite); // placeholders
	var yOffset = sprite_get_yoffset(myItem.sprite);
	var spriteWidth = sprite_get_width(myItem.sprite) + margin;
	
	var drawX = margin + (xOffset + (i *spriteWidth));
	var drawY = (margin * 2) + yOffset;
	
	//draw
	if (myItem != noone) {
		draw_sprite(myItem.sprite, 0 ,drawX, drawY);
		draw_set_color(c_white);
		draw_text(drawX, drawY, myItem.amount);
	}
}