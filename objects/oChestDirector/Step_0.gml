// find valid place to put chest
if (chestSpawnCredits > 0) {
	var locationX = random_range(DIRECTOR.FLOATINGROCKMINX, DIRECTOR.FLOATINGROCKMAXX);
	var locationY = random_range(DIRECTOR.FLOATINGROCKMINY, DIRECTOR.FLOATINGROCKMAXY);
	
	var closestBlock = collision_line(locationX, locationY, locationX, DIRECTOR.FLOATINGROCKMAXY, oChestSpawnpoint, false, true);
	show_debug_message(locationY)
	// eventually put code here deciding which type of container to spawn
	
	// generate chest
	if (closestBlock != noone) {
		var chest = instance_create_layer(locationX, closestBlock.y + sprite_get_height(sChestSpawnpoint), "Interactables", oChest);
		chestSpawnCredits--;
	
		with chest {
			if (collision_circle(x, y, sprite_get_width(chest.sprite_index), oContainer, false, true) != noone) {
				instance_destroy(chest);
				oChestDirector.chestSpawnCredits++;
			}
	
		}
	}
}