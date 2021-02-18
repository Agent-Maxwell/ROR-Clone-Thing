damage(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 8]);

if (collision_circle(x, y, explosionRadius, oEnemy, false, true) != noone) {
knockback(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 10]);

}

instance_destroy();