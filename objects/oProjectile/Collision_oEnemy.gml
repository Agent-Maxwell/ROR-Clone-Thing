if (explosionRadius != -1) {
	damage(collision_circle(x, y, explosionRadius, oEnemy, false, true), projDamage);
	knockback(collision_circle(x, y, explosionRadius, oEnemy, false, true), projKnockback);
} else {
	damage(other, projDamage)
	if (knockback > 0) {
	knockback(other, projKnockback)
	}
}

instance_destroy();