function damage(victim, damageAmount) {
	with (victim) {
		hp -= damageAmount;
		damaged = true;
		amountDamaged = damageAmount;
	}
}