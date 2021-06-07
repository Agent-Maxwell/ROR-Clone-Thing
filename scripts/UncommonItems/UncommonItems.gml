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
	description = "A very nice scope. Reduces projectile spread by " + string(changeAmount * .01) + " percent.";
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
	description = "A very nice magazine. Increases projectile damage by " + string(changeAmount * .01) + " percent.";
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
	description = "A very nice muzzle. Increases projectile speed by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}