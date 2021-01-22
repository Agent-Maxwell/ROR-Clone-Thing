// Inherit the parent event
event_inherited();

// reduce speed
if (horizontalSpeed > 0) {
	horizontalSpeed -= .1;
}
if (verticalSpeed > 0) {
	verticalSpeed -= .1;
}

// make sure speed isnt below zero
if (horizontalSpeed < 0) {
	horizontalSpeed = 0;
}
if (verticalSpeed < 0) {
	verticalSpeed = 0;
}