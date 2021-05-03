global.commonItemAmount = 1;
global.uncommonItemAmount = 1;
global.rareItemAmount = 1;

global.items = array_create(3, 0);

global.items[1, 1] = itemsenum.weaponPolish;
global.items[2, 1] = itemsenum.sugarPatch;
global.items[3, 1] = itemsenum.angelWings;

global.playerWeapons = array_create(3);
global.playerWeapons[0, 0] = noone;
global.playerWeapons[1, 0] = oPistol;
global.playerWeapons[1, 1] = true;
global.playerWeapons[2, 0] = oRocketLauncher;
global.playerWeapons[2, 1] = true;

enum itemsenum {
	weaponPolish,
	sugarPatch,
	angelWings,
}

// player variables stored here for access in itemscripts

global.playerVariables = array_create(13);

global.playerVariables[1, 1] = 0.3; //gravity
global.playerVariables[1, 2] = 3.5; //walkspeed
global.playerVariables[1, 3] = -7; //jumpheight
global.playerVariables[1, 4] = 1; //maxjumps


// item parent
function Item () constructor {
	name = "";
	slotType = "";
	rarity = -1;
	sprite = -1;
	variableToChange = -1;
	changeAmount = -1;
	operatorType = "";
	description = "";
}