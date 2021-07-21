// find valid place to put enemy
if (enemySpawnCredits > 0) {
	var locationX = random_range(DIRECTOR.FLOATINGROCKMINX, DIRECTOR.FLOATINGROCKMAXX);
	var locationY = random_range(DIRECTOR.FLOATINGROCKMINY, DIRECTOR.FLOATINGROCKMAXY);
	
	var closestBlock = collision_line(locationX, locationY, locationX, DIRECTOR.FLOATINGROCKMAXY, oEnemySpawnpoint, false, true);
	show_debug_message(locationY)
	// eventually put code here deciding which type of container to spawn
	
	// generate enemy
	if (closestBlock != noone) {
		var enemy = instance_create_layer(locationX, closestBlock.y, "Instances", oMeleeEnemy);
		enemySpawnCredits--;
		
		with enemy {
			if (collision_circle(x, y, sprite_get_height(enemy.sprite_index), enemyCollision, false, true) != noone) {
				instance_destroy(enemy);
				oEnemyDirector.enemySpawnCredits++;
			}
		}
	}
}