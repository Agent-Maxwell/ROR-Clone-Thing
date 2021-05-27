function unCommonScope () : Item () constructor {
	name = "Uncommon Scope";
	slotType = SCOPE;
	rarity = 2;
	sprite = sWeaponPolish;
	variableToChange = "itemSpreadChangeAmount";
	baseVariable = "projectileSpreadAmount";
	changeAmount = random_range(30, 60); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "A very nice scope. Reduces projectile spread by " + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function unCommonMagazine () : Item () constructor {
	name = "Uncommon Magazine";
	slotType = MAGAZINE;
	rarity = 2;
	sprite = sWeaponPolish;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(15, 40); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "A very nice magazine. Increases projectile damage by " + string(changeAmount) + " percent.";
	specialAttribute = noone;
}