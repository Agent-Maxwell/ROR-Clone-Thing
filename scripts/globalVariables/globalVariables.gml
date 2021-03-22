global.commonItemAmount = 1;
global.uncommonItemAmount = 1;
global.rareItemAmount = 1;

global.items = array_create(3, 0);

global.items[1, 1] = itemsenum.weaponPolish;
global.items[2, 1] = itemsenum.sugarPatch;
global.items[3, 1] = itemsenum.angelWings;


enum itemsenum {
	weaponPolish,
	sugarPatch,
	angelWings,
}

// player variables stored hgere for access in itemscripts

global.playerVariables = array_create(13);

global.playerVariables[1, 1] = 0.3; //gravity
global.playerVariables[1, 2] = 3.5; //walkspeed
global.playerVariables[1, 3] = -7; //jumpheight
global.playerVariables[1, 4] = 1; //maxjumps
global.playerVariables[1, 5] = 30; //rocketcooldown
global.playerVariables[1, 6] = 30; //bulletcooldown
global.playerVariables[1, 7] = 5; //bulletdamage
global.playerVariables[1, 8] = 20; //rocketdamage
global.playerVariables[1, 9] = .1; //bulletknockback
global.playerVariables[1, 10] = 10; //rocketknockback
global.playerVariables[1, 11] = 30; //rocketexplosionradius
global.playerVariables[1, 12] = 10; //bulletspeed
global.playerVariables[1, 13] = 4.5; //rocketspeed


// item parent
function Item () constructor {
	name = "";
	rarity = -1;
	sprite = -1;
	variableToChange = -1;
	changeAmount = -1;
	operatorType = "";
	amount = 1;
	description = "";
}

function applyGlobalVariables() {
playerGravity = global.playerVariables[1, 1];
walkSpeed = global.playerVariables[1, 2];
jumpHeight = global.playerVariables[1, 3];
maxJumps = global.playerVariables[1, 4];
jumps = maxJumps;
rocketCooldown = global.playerVariables[1, 5];
bulletCooldown = global.playerVariables[1, 6];
bulletDamage = global.playerVariables[1, 7];
rocketDamage = global.playerVariables[1, 8];
bulletKnockback = global.playerVariables[1, 9];
rocketKnockback = global.playerVariables[1, 10];
bulletSpeed = global.playerVariables[1, 12];
rocketSpeed = global.playerVariables[1, 13];
}