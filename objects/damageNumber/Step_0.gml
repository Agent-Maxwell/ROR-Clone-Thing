y -= yShiftAmount;
x += xOffset;

// check to see if gaining or losing health, if neither then kill
if (numberToWrite > 0) {
	color = c_red;
	ready = true;
} else if (numberToWrite < 0) {
	color = c_green;
	ready = true;
} else {
	instance_destroy();
}
