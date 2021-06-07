function rareScope () : Item () constructor {
	name = "Rare Scope";
	slotType = SCOPE;
	rarity = 3;
	sprite = sScope;
	variableToChange = "itemSpreadChangeAmount";
	baseVariable = "projectileSpreadAmount";
	changeAmount = random_range(60, 100); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "An advanced scope. Reduces projectile spread by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}

function rareMagazine () : Item () constructor {
	name = "Common Magazine";
	slotType = MAGAZINE;
	rarity = 3;
	sprite = sMagazine;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(40, 90); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "An advanced magazine. Increases projectile damage by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}

function rareMuzzle () : Item () constructor {
	name = "Rare Muzzle";
	slotType = MUZZLE;
	rarity = 3;
	sprite = sMuzzle;
	variableToChange = "itemSpeedChangeAmount"; // will need to be added to both the min and max speeds so it uses its own variable
	baseVariable = "maxProjectileSpeed";
	changeAmount = random_range(30, 80); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "A very nice muzzle. Increases projectile speed by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}