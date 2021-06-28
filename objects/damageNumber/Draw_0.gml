draw_set_color(color);
draw_set_font(font);

// makes sure we only draw after the step event code has run
if (ready) {
draw_text(x, y, numberToWrite);
}