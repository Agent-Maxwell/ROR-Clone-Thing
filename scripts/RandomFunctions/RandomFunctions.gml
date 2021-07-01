//crashes the game
function crashGame(){
	lol();
}

function togglePaused() {
	oGame.paused = !oGame.paused;
	
	if (oGame.paused) {
		// create freezeframe of current room
		if(!sprite_exists(oGame.freezeFrame)){
        oGame.freezeFrame = sprite_create_from_surface(application_surface,0,0,RES.WIDTH,RES.HEIGHT,0,0,0,0);
		}
		

		instance_deactivate_all(true);
		instance_activate_object(oGame);
		
		// create menu tabs
		switchMenuTab("mainInGame");
	} else {
		
		if (instance_exists(oMenuButton)) {
			instance_destroy(oMenuButton);
		}
		
		if(sprite_exists(oGame.freezeFrame)){
			sprite_delete(oGame.freezeFrame);
		}
		
		oGame.freezeFrameObject = noone;
	
		instance_activate_all();
	}
}