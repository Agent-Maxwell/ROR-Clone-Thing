function knockback(victim, knockbackAmount){
	angle = point_direction(x, y, victim.x, victim.y);
	xAmountToMove = 0;
	yAmountToMove = 0;
	under = 0;

	// check to see if under
	if (y > (victim.y - 20)) { // with this its probably better to actually find the center by getting the topa nd bottom and averaging them out, but this works for now
		under = true;
	}

	if ((angle > 80 && angle < 100) || (angle > 260 && angle < 280)) {
		xAmountToMove = knockbackAmount*.8;
		yAmountToMove = knockbackAmount;
	} else {
		xAmountToMove = knockbackAmount;
		yAmountToMove = knockbackAmount*.8;
	}
	
	// reverse direction if hit from other side
	if (angle > 90 && angle <= 270) {
		xAmountToMove *= -1;
	}

	if (under) {
		yAmountToMove*=-1;
	}
	
	show_debug_message(yAmountToMove)
	victim.horizontalSpeed += xAmountToMove;
	victim.verticalSpeed += yAmountToMove;

}