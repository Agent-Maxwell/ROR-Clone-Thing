function damage(victim, damageAmount) {
	with (victim) {
		hp -= damageAmount;
	}
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(500, 500, "AAAAAAAAAAAAAAAAAAAAAAAAA"); //this needs to be in a draw event, but iw ant it ina script so i have no idea what to do
}