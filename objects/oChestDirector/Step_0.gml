// find valid place to put chest
if (chestSpawnCredits > 0) {
	var locationX = random_range(DIRECTOR.FLOATINGROCKMINX, DIRECTOR.FLOATINGROCKMAXX);
	var locationY = random_range(DIRECTOR.FLOATINGROCKMINY, DIRECTOR.FLOATINGROCKMAXY);
	
	var closestBlock = collision_line(locationX, locationY, locationX, DIRECTOR.FLOATINGROCKMINY, oBlock, false, true);
	show_debug_message(locationY)
	// eventually put code here deciding which type of container to spawn
	
	// generate chest
	if (closestBlock != noone) {
	var chest = instance_create_layer(closestBlock.x, closestBlock.y, "Interactables", oChest);
	chestSpawnCredits--;
	}
	// need collision code here to make sure chest isnt half in block
}