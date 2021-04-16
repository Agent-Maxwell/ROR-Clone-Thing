// keyboard variables
leftPressed = keyboard_check(ord("A"));
rightPressed = keyboard_check(ord("D"));
spacePressed = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space);

var move = rightPressed - leftPressed;

// setting speeds
horizontalSpeed = move * walkSpeed;
verticalSpeed = verticalSpeed + playerGravity;

// reset jumps
if (place_meeting(x, y + 1, oBlock)) {
	jumps = maxJumps;
	show_debug_message(jumps);
}

//jumping
if (jumps > 0 && spacePressed){
	verticalSpeed = jumpHeight;
	jumps--;
}

// horizontal colision
if (place_meeting(x + horizontalSpeed, y, oBlock)){
	
	while (!place_meeting(x + sign(horizontalSpeed), y, oBlock)){
		x = x + sign(horizontalSpeed);
	}
	
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;

//vertical collision
if (place_meeting(x, y + verticalSpeed, oBlock)){
	
	while (!place_meeting(x, y + sign(verticalSpeed), oBlock)){
		y = y + sign(verticalSpeed);
	}
	
	verticalSpeed = 0;
}
y = y + verticalSpeed;

// switch weapons
if (mouse_wheel_up()) {
	
} else if (mouse_wheel_down()) {
	
}