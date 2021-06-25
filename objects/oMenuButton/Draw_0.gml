if (hover) {
	image_index = 1;
} else {
	image_index = 0;
}
draw_self();

//draw text
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fMenuButton);
draw_text(x, y, buttonText);