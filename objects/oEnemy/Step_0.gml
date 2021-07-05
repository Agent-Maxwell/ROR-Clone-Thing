// horizontal colision
if (place_meeting(x + horizontalSpeed, y, oBlock)){
	
	while (!place_meeting(x + sign(horizontalSpeed), y, oBlock)){
		x = x + sign(horizontalSpeed);
	}
	
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;


//gravity
verticalSpeed = verticalSpeed + enemyGravity;

//vertical collision
if (place_meeting(x, y + verticalSpeed, oBlock)){
	
	while (!place_meeting(x, y + sign(verticalSpeed), oBlock)){
		y = y + sign(verticalSpeed);
	}
	
	verticalSpeed = 0;
}
y = y + verticalSpeed;


//knockback
if (knockedBack) {
	
	// friction
	if (horizontalSpeed > 0) {
		horizontalSpeed -= enemyFriction;
	}

	if (horizontalSpeed < 0) {
		horizontalSpeed += enemyFriction;
	}

	// jitter prevention
	if (horizontalSpeed < 1 && horizontalSpeed > -1) {
		horizontalSpeed = 0;
	}
	
	// leave knockback state
	if (horizontalSpeed = 0 && verticalSpeed = 0) {
		knockedBack = false;
	}
} else {
	
	// move to player
	if (abs(x) - abs(oPlayer.x) >= 0) {
		//eventually replace this with rampup
		horizontalSpeed = maxHsp;
		facing = -1;
	} else {
		horizontalSpeed = maxHsp;
		facing = 1;
	}

	//make sure were going the right direction
	horizontalSpeed *= facing;
}



// damage numbers
if (damaged) {
	myDamageNumber = instance_create_layer(x, y - 50, "Instances", damageNumber);

	myDamageNumber.numberToWrite = amountDamaged;
	
	damaged = false;
	amountDamaged = 0;
}