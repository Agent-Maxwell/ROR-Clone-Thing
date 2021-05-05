draw_self();

 if (recentlyDamaged) {
// draw health bar

//fade
if (alarm[0] <= 60) {
	draw_set_alpha(alarm[0]/60);
}

// draw fill
var myAmt = hp / maxHp;

draw_set_color(c_red);
draw_rectangle(x - 20, bbox_top - 5, (x + 20) * myAmt, bbox_top - 12, 0);
draw_set_color(-1);

// draw health bar border
draw_rectangle(x - 20, bbox_top - 5, x + 20, bbox_top - 12, 1);

//reset alpha
draw_set_alpha(1);
 }