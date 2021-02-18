damage(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 8]);
knockback(collision_circle(x, y, explosionRadius, oEnemy, false, true), global.playerVariables[1, 10]);

instance_destroy();