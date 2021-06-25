function switchMenuTab(newMenuTab){

}

function goToRoom(myRoom){
	// for some reason the objects need to be reactivated before being moved
	instance_activate_object(oPlayer);
	instance_activate_object(oWeapon);
	
	room_goto(myRoom);
}