if (collision_circle(x, y, explosionRadius, oEnemy, false, true) != noone && explosionRadius != -1) {
knockback(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 10]);
damage(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 8]);
}

instance_destroy();