if (explosionRadius != -1) {
	damage(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 8]);
	knockback(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 10]);
} else {
	damage(other, projDamage)
	knockback(other, projKnockback)
}

instance_destroy();