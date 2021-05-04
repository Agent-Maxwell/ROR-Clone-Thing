function unCommonScope () : Item () constructor {
	name = "Uncommon Scope";
	slotType = "scope";
	rarity = 2;
	sprite = sWeaponPolish;
	variableToChange = "projectileSpreadAmount";
	changeAmount = random_range(.4, .8);
	operatorType = "-";
	description = "A very nice scope. Reduces bullet spread by " + string(changeAmount);
	specialAttribute = noone;
}