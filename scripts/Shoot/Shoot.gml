function Shoot(myDamage, myAmmoType, myMinSpeed, myMaxSpeed, mySpread, myKnockback, myExplosionRadius, myLifetime, mySprite){

  newProjectile = instance_create_layer(x, y, "Instances", oProjectile);
  
  with newProjectile {
	lifetime = myLifetime;
	projSpeed = random_range(myMinSpeed, myMaxSpeed);
	explosionRadius = myExplosionRadius;
	projDamage = myDamage;
	projKnockback = myKnockback;
	projSprite = mySprite;
	projAngleOffset = random_range(mySpread*-1, mySpread);
	sprite_index = projSprite;
	image_xscale = -1;
	speed = projSpeed;
	
	
	// set direction and angle
	projDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
	direction = projDirection + projAngleOffset;
	image_angle = projDirection + projAngleOffset;
  }
  
  with oPlayer {
	  // decrement the ammocount for this weapons ammo type here
  }
}