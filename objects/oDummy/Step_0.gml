// horizontal colision
if (place_meeting(x + horizontalSpeed, y, enemyCollision)){
	
	while (!place_meeting(x + sign(horizontalSpeed), y, enemyCollision)){
		x = x + sign(horizontalSpeed);
	}
	
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;


//gravity
verticalSpeed = verticalSpeed + enemyGravity;

//vertical collision
if (place_meeting(x, y + verticalSpeed, enemyCollision)){
	
	while (!place_meeting(x, y + sign(verticalSpeed), enemyCollision)){
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
}


// damage numbers
if (damaged) {
	myDamageNumber = instance_create_layer(x, y - 50, "Instances", damageNumber);

	myDamageNumber.numberToWrite = amountDamaged;
	
	damaged = false;
	amountDamaged = 0;
}