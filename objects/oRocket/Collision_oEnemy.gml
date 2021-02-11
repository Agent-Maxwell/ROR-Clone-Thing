damage(collision_circle(x, y, 5, oEnemy, false, true), global.playerVariables[1, 8]);
knockback(oEnemy, global.playerVariables[1, 10], image_angle);

instance_destroy();