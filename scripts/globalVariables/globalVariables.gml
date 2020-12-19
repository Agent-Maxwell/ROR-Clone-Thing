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

global.playerVariables = array_create(1, 8);

global.playerVariables[1, 1] = 0.3;
global.playerVariables[1, 2] = 3.5;
global.playerVariables[1, 3] = -7;
global.playerVariables[1, 4] = 1;
global.playerVariables[1, 5] = 30;
global.playerVariables[1, 6] = 30;
global.playerVariables[1, 7] = 5;
global.playerVariables[1, 8] = 20;

// item parent
function Item () constructor {
	name = "";
	rarity = -1;
	sprite = -1;
	variableToChange = -1;
	changeAmount = -1;
	operatorType = "";
}