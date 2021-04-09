// setting speeds
//put horizontal spped calculations here
verticalSpeed = verticalSpeed + enemyGravity;

//jumping
//nothing yet

// horizontal colision
if (place_meeting(x + horizontalSpeed, y, oBlock)){
	
	while (!place_meeting(x + sign(horizontalSpeed), y, oBlock)){
		x = x + sign(horizontalSpeed);
	}
	
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;

//friction
if (horizontalSpeed > 0) {
	horizontalSpeed -= enemyFriction;
}

if (horizontalSpeed < 0) {
	horizontalSpeed += enemyFriction;
}

if (horizontalSpeed < 1 && horizontalSpeed > -1) {
	horizontalSpeed = 0;
}

//vertical collision
if (place_meeting(x, y + verticalSpeed, oBlock)){
	
	while (!place_meeting(x, y + sign(verticalSpeed), oBlock)){
		y = y + sign(verticalSpeed);
	}
	
	verticalSpeed = 0;
}
y = y + verticalSpeed;

// damage numbers
if (damaged) {
	myDamageNumber = instance_create_layer(x, y - 50, "Instances", damageNumber);

	myDamageNumber.numberToWrite = abs(amountDamaged);
	
	damaged = false;
	amountDamaged = 0;
}