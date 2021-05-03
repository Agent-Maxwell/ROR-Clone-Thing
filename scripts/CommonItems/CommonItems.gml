function commonScope () : Item () constructor {
	name = "Common Scope";
	slotType = "scope";
	rarity = 1;
	sprite = sWeaponPolish;
	variableToChange = projectileSpreadAmount;
	changeAmount = random_range(0, .4);
	operatorType = "-";
	description = "Increases damage by 5 per stack.\n\nTotal damage increase:" + string(changeAmount*amount);
}