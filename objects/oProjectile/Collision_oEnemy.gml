if (explosionRadius != -1) {
	
	// store all of the entities in range and damage them
	var damageList = ds_list_create();
	collision_circle_list(x, y, explosionRadius, oEnemy, false, true, damageList, true);
	
	for(i = 0; i < ds_list_size(damageList); i++) {
		damage(ds_list_find_value(damageList, i), projDamage);
		knockback(ds_list_find_value(damageList, i), projKnockback);
	}
	

} else {
	damage(other, projDamage)
	if (knockback > 0) {
	knockback(other, projKnockback)
	}
}


instance_destroy();