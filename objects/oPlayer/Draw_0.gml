draw_self();

if (mouse_check_button(mb_left) && currentBulletCooldown = 0) {
	draw_set_color(c_red);
	draw_line(x, y, mouse_x, mouse_y);
}