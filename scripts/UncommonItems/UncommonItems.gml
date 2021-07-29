function unCommonScope () : Item () constructor {
	name = "Uncommon Scope";
	slotType = SCOPE;
	rarity = 2;
	sprite = sScope;
	variableToChange = "itemSpreadChangeAmount";
	baseVariable = "projectileSpreadAmount";
	changeAmount = random_range(30, 60); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "A very nice scope.\n Reduces projectile spread by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function unCommonMagazine () : Item () constructor {
	name = "Uncommon Magazine";
	slotType = MAGAZINE;
	rarity = 2;
	sprite = sMagazine;
	variableToChange = "itemDamageChangeAmount";
	baseVariable = "projectileDamage";
	changeAmount = random_range(15, 40); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "A very nice magazine.\n Increases projectile damage by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function unCommonMuzzle () : Item () constructor {
	name = "Uncommon Muzzle";
	slotType = MUZZLE;
	rarity = 2;
	sprite = sMuzzle;
	variableToChange = "itemSpeedChangeAmount"; // will need to be added to both the min and max speeds so it uses its own variable
	baseVariable = "maxProjectileSpeed";
	changeAmount = random_range(15, 30); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "A very nice muzzle.\n Increases projectile speed by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}

function unCommonStock () : Item () constructor {
	name = "Uncommon Stock";
	slotType = STOCK;
	rarity = 1;
	sprite = sStock;
	variableToChange = "itemCooldownChangeAmount";
	baseVariable = "weaponCooldown";
	changeAmount = random_range(20, 40); // this will be a percentage
	operatorType = "-";
	percentage = true;
	description = "A very nice Stock.\n reduces weapon cooldown by \n" + string(changeAmount) + " percent.";
	specialAttribute = noone;
}