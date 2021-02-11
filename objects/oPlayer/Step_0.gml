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
}

//jumping
if (jumps > 0) && (spacePressed){
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

// shoot rocket
if (mouse_check_button(mb_right) && currentRocketCooldown = 0) {
	instance_create_layer(x, y, "Instances", oRocket);
	
	// reset cooldown
	if (currentRocketCooldown <= 0){
		currentRocketCooldown = rocketCooldown;
	}
}

// lower rocket cooldown
currentRocketCooldown--;
if (currentRocketCooldown <= 0) {
	currentRocketCooldown = 0;
}

// shoot bullet
if (mouse_check_button(mb_left) && currentBulletCooldown = 0) {
	xyAdjust = 0;
	temp = 0;
	
	while (temp = 0) {
	target = collision_line(x, y, lerp(x, mouse_x, xyAdjust), lerp(y, mouse_y, xyAdjust), oEnemy, false, true);
	
	if (target != noone) {
		damage(target, bulletDamage); 
		knockback(target, bulletKnockback, point_direction(x,y,mouse_x,mouse_y));
		oPlayer.temp++;
	}
	
	xyAdjust += 0.1;
	
	if (xyAdjust >= 1){
		temp++;
	}
	}
}

// lower bullet cooldown
currentBulletCooldown--;
if (currentBulletCooldown <= 0) {
	currentBulletCooldown = 0;
}