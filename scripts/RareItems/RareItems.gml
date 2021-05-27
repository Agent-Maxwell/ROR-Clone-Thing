function rareScope () : Item () constructor {
	name = "Rare Scope";
	slotType = SCOPE;
	rarity = 3;
	sprite = sWeaponPolish;
	variableToChange = "itemSpreadChangeAmount";
	baseVariable = "projectileSpreadAmount";
	changeAmount = random_range(60, 100); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "An advanced scope. Reduces projectile spread by " + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function rareMagazine () : Item () constructor {
	name = "Common Magazine";
	slotType = MAGAZINE;
	rarity = 3;
	sprite = sWeaponPolish;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(40, 90); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "An advanced magazine. Increases projectile damage by " + string(changeAmount) + " percent.";
	specialAttribute = noone;
}