function Shoot(myTarget, myDamage, myAmmoType, mySpeedSubtractor, myMaxSpeed, mySpread, myKnockback, myExplosionRadius, myLifetime, mySprite, mySpeedModifier, mySpreadModifier, myKnockbackModifier, myExplosionRadiusModifier, myDamageModifier) {
	
	// modify variables
	myDamage += myDamageModifier;
	myMaxSpeed += mySpeedModifier;
	mySpread += mySpreadModifier;
	myKnockback += myKnockbackModifier;
	myExplosionRadius += myExplosionRadiusModifier;


  newProjectile = instance_create_layer(x, y, "Instances", oProjectile);
  
  with newProjectile {
	lifetime = myLifetime;
	projSpeed = random_range((myMaxSpeed - mySpeedSubtractor), myMaxSpeed);
	explosionRadius = myExplosionRadius;
	projDamage = myDamage;
	projKnockback = myKnockback;
	projSprite = mySprite;
	projAngleOffset = random_range(mySpread*-1, mySpread);
	sprite_index = projSprite;
	image_xscale = -1;
	speed = projSpeed;
	projTarget = myTarget;
	
	
	// set direction and angle
	projDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
	direction = projDirection + projAngleOffset;
	image_angle = projDirection + projAngleOffset;
	
  }
  
  with oPlayer {
	  // decrement the ammocount for this weapons ammo type here
  }
}

function enemyShoot(myStart, myTarget, myDamage, mySpeedSubtractor, myMaxSpeed, mySpread, myExplosionRadius, myLifetime, mySprite) {



  newProjectile = instance_create_layer(x, y, "Instances", oProjectile);
  
  with newProjectile {
	lifetime = myLifetime;
	projSpeed = random_range((myMaxSpeed - mySpeedSubtractor), myMaxSpeed);
	explosionRadius = myExplosionRadius;
	projDamage = myDamage;
	projSprite = mySprite;
	projAngleOffset = random_range(mySpread*-1, mySpread);
	sprite_index = projSprite;
	image_xscale = -1;
	speed = projSpeed;
	projTarget = myTarget;
	
	
	// set direction and angle
	projDirection = point_direction(myStart.x, myStart.y, myTarget.x, myTarget.y);
	direction = projDirection + projAngleOffset;
	image_angle = projDirection + projAngleOffset;
	
  }
}