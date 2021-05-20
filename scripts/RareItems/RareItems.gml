function rareScope () : Item () constructor {
	name = "Rare Scope";
	slotType = SCOPE;
	rarity = 3;
	sprite = sWeaponPolish;
	variableToChange = "projectileSpreadAmount";
	changeAmount = random_range(.8, 1);
	operatorType = "-";
	description = "An advanced scope. Reduces bullet spread by " + string(changeAmount);
	specialAttribute = noone;
}