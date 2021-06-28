function switchMenuTab(newMenuTab){
	// use a switch statement here for the more basic menu changes, 
	//but move over the complicated ones to their own script
	
	// if menu tabs exist, destroy them
	if (instance_exists(oMenuButton)) {
		instance_destroy(oMenuButton);
	}
	
	switch newMenuTab {
		case "main":
			var buttonStart = instance_create_layer(650, 300, "MenuButtons", oMenuButton);
			buttonStart.buttonText = "Start Game";
			buttonStart.roomToGoTo = Room1;
	
			var buttonOptions = instance_create_layer(650, 400, "MenuButtons", oMenuButton);
			buttonOptions.buttonText = "Options";
			buttonOptions.tabToSwitchTo = "options";
	
			var buttonOptions = instance_create_layer(650, 500, "MenuButtons", oMenuButton);
			buttonOptions.buttonText = "Quit Game";
			buttonOptions.commandToExecute = game_end;
		break
		
		case "options":
			var buttonDooDoo = instance_create_layer(650, 300, "MenuButtons", oMenuButton);
			buttonDooDoo.buttonText = "Crash Game";
			buttonDooDoo.commandToExecute = crashGame;
			
			var buttonBack = instance_create_layer(650, 400, "MenuButtons", oMenuButton);
			buttonBack.buttonText = "Back";
			buttonBack.tabToSwitchTo = "main";
		break
	}
}

function goToRoom(myRoom){
	// for some reason the objects need to be reactivated before being moved
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
	
	room_goto(myRoom);
}