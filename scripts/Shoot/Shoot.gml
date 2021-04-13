function Shoot(myDamage, myAmmoType, mySpeed, myKnockback, myExplosionRadius, myLifetime, mySprite){

  newProjectile = instance_create_layer(x, y, "Instances", oProjectile);
  
  with newProjectile {
	lifetime = myLifetime;
	projSpeed = mySpeed;
	explosionRadius = myExplosionRadius;
	projDamage = myDamage;
	projKnockback = myKnockback;
	projSprite = mySprite;
	image_index = projSprite;
	image_xscale = -1;
	speed = projSpeed;
  }
  
  with oPlayer {
	  // decrement the ammocount for this weapons ammo type here
  }
}