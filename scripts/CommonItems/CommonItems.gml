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
	description = "A basic scope. Reduces projectile spread by " + string(changeAmount * .01) + " percent.";
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
	description = "A basic magazine. Increases projectile damage by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}

function commonMuzzle () : Item () constructor {
	name = "Common Muzzle";
	slotType = MUZZLE;
	rarity = 1;
	sprite = sMuzzle;
	variableToChange = "itemSpeedChangeAmount"; // will need to be added to both the min and max speeds so it uses its own variable
	baseVariable = "maxProjectileSpeed";
	changeAmount = random_range(5, 15); // this will be a percentage
	operatorType = "+";
	percentage = true;
	description = "A basic muzzle. Increases projectile speed by " + string(changeAmount * .01) + " percent.";
	specialAttribute = noone;
}