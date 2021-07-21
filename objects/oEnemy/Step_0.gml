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
} else {
	
	// move to player
	if (abs(x) - abs(oPlayer.x) >= 0) {

		facing = -1;
		
		//rampup
		if !(horizontalSpeed < -maxHsp) {
			horizontalSpeed += speedStep * facing;
		 }
	} else {

		facing = 1;
		
		//rampup
		if !(horizontalSpeed > maxHsp) {
			horizontalSpeed += speedStep * facing;
		}
	}
	
	// jump
	if (distance_to_point(oPlayer.x, y) > 25 && collision_point(x + (sprite_get_width(sprite_index) * facing), y - (sprite_get_height(sprite_index)/2), oBlock, false, true) != noone && jumps > 0 && place_meeting(x, y + 1, enemyCollision)) {
		verticalSpeed = jumpHeight;
		jumps--;
	}
	
	// reset jumps
	if (place_meeting(x, y + 1, enemyCollision)) {
		jumps = maxJumps;
	}
	
	// make it so enemies dont stack on eachothers heads
	if (place_meeting(x, y - 1, oEnemy)) {
		horizontalSpeed = 0;
	}
}



// damage numbers
if (damaged) {
	myDamageNumber = instance_create_layer(x, y - 50, "Instances", damageNumber);

	myDamageNumber.numberToWrite = amountDamaged;
	
	damaged = false;
	amountDamaged = 0;
}

// attack

// melee
if (attackedMelee = false && hasMeleeAttack && point_distance(x, y, oPlayer.x, oPlayer.y) < 20) {
	damage(oPlayer, meleeDamage);
	attackedMelee = true;
	alarm[1] = 30;
}

// projectile
if (attackedProjectile = false && hasProjectileAttack) {
	
	enemyShoot(id, oPlayer, rangedDamage, 2, 10, 5, 0, 100, sRocket);
	
	attackedProjectile = true;
	alarm[2] = 30;
}