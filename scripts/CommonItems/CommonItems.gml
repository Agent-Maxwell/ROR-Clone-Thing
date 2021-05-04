function commonScope () : Item () constructor {
	name = "Common Scope";
	slotType = "scope";
	rarity = 1;
	sprite = sWeaponPolish;
	variableToChange = "projectileSpreadAmount";
	changeAmount = random_range(0, .4);
	operatorType = "-";
	description = "A basic scope. Reduces bullet spread by " + string(changeAmount);
	specialAttribute = noone;
}