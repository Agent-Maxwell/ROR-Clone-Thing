function switchMenuTab(newMenuTab){
	// use a switch statement here for the more basic menu changes, 
	//but move over the complicated ones to their own script
	
	// if menu tabs exist, destroy them
	if (instance_exists(oMenuButton)) {
		instance_destroy(oMenuButton);
	}
	
	// for less clutter
	var xValue = view_xport[0] + view_wport[0] * 0.5;
	var yValue = view_yport[0] + view_hport[0] * 0.5;
	
	switch newMenuTab {
		case "main":
			var buttonStart = instance_create_layer(xValue, yValue - 100, "MenuButtons", oMenuButton);
			buttonStart.buttonText = "Start Game";
			buttonStart.roomToGoTo = Room1;
	
			var buttonOptions = instance_create_layer(xValue, yValue, "MenuButtons", oMenuButton);
			buttonOptions.buttonText = "Options";
			buttonOptions.tabToSwitchTo = "options";
	
			var buttonOptions = instance_create_layer(xValue, yValue + 100, "MenuButtons", oMenuButton);
			buttonOptions.buttonText = "Quit Game";
			buttonOptions.commandToExecute = game_end;
		break
		
		case "mainInGame":
			var buttonResume = instance_create_layer(xValue, yValue - 100, "MenuButtons", oMenuButton);
			buttonResume.buttonText = "Resume";
			buttonResume.commandToExecute = togglePaused;
	
			var buttonOptions = instance_create_layer(xValue, yValue, "MenuButtons", oMenuButton);
			buttonOptions.buttonText = "Options";
			buttonOptions.tabToSwitchTo = "options";
	
			var buttonBackToMain = instance_create_layer(xValue, yValue + 100, "MenuButtons", oMenuButton);
			buttonBackToMain.buttonText = "Main Menu";
			buttonBackToMain.roomToGoTo = rmMainMenu;
		break
		
		case "options":
			var buttonDooDoo = instance_create_layer(xValue, yValue, "MenuButtons", oMenuButton);
			buttonDooDoo.buttonText = "Crash Game";
			buttonDooDoo.commandToExecute = crashGame;
			
			var buttonBack = instance_create_layer(xValue, yValue + 100, "MenuButtons", oMenuButton);
			buttonBack.buttonText = "Back";
			
			// make sure we are going back to the correct menu tab
			if (room = rmMainMenu) {
				buttonBack.tabToSwitchTo = "main";
			} else {
				buttonBack.tabToSwitchTo = "mainInGame";
			}
			
		break
	}
}

function goToRoom(myRoom){
	// for some reason the objects need to be reactivated before being moved
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
	
	room_goto(myRoom);
}