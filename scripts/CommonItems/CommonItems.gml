function commonScope () : Item () constructor {
	name = "Common Scope";
	slotType = SCOPE;
	rarity = 1;
	sprite = sScope;
	variableToChange = "itemSpreadChangeAmount";
	baseVariable = "projectileSpreadAmount";
	changeAmount = random_range(10, 30); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "Smells terrible.\n Reduces projectile spread by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function commonMagazine () : Item () constructor {
	name = "Common Magazine";
	slotType = MAGAZINE;
	rarity = 1;
	sprite = sMagazine;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(5, 15); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "Doesn't really fit.\n Increases projectile damage by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function commonMuzzle () : Item () constructor {
	name = "Common Muzzle";
	slotType = MUZZLE;
	rarity = 1;
	sprite = sMuzzle;
	variableToChange = "itemSpeedChangeAmount";
	baseVariable = "maxProjectileSpeed";
	changeAmount = random_range(5, 15); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "Made of cardboard.\n Increases projectile speed by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function commonStock () : Item () constructor {
	name = "Common Stock";
	slotType = STOCK;
	rarity = 1;
	sprite = sStock;
	variableToChange = "itemCooldownChangeAmount";
	baseVariable = "weaponCooldown";
	changeAmount = random_range(5, 20); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "Just a stick actually.\n reduces weapon cooldown by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}