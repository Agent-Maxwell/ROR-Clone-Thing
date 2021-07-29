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
	description = "An advanced scope.\n Reduces projectile spread by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function rareMagazine () : Item () constructor {
	name = "Rare Magazine";
	slotType = MAGAZINE;
	rarity = 3;
	sprite = sMagazine;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(40, 90); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "An advanced magazine.\n Increases projectile damage by \n" + string(changeAmount) + " percent.";
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
	description = "An advanced muzzle.\n Increases projectile speed by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function rareStock () : Item () constructor {
	name = "Rare Stock";
	slotType = STOCK;
	rarity = 1;
	sprite = sStock;
	variableToChange = "itemCooldownChangeAmount";
	baseVariable = "weaponCooldown";
	changeAmount = random_range(40, 60); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "An advanced stock.\n reduces weapon cooldown by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}