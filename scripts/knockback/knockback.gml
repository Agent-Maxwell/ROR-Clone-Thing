function knockback(victim, knockbackAmount, angle){
	xAmountToMove = 0;
	yAmountToMove = 0;
	
	xAmountToMove = knockbackAmount;
	
	
	if (angle = 90 || angle = 270) {
		yAmountToMove = knockbackAmount;
	}
	
	// reverse direction if hit from other side
	if (angle > 90 && angle <= 270) {
		xAmountToMove *= -1;
		yAmountToMove *= -1;
	}
	

	victim.horizontalSpeed+= xAmountToMove;
	victim.verticalSpeed+= yAmountToMove;

}