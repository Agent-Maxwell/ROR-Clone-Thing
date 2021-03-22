function weaponPolish () : Item () constructor {
	name = "Weapon Polish";
	rarity = 1;
	sprite = sWeaponPolish;
	variableToChange = 7;
	changeAmount = 5;
	operatorType = "+";
	amount = 1;
	description = "Increases damage by 5 per stack.\n\nTotal damage increase:" + (changeAmount*amount);
}