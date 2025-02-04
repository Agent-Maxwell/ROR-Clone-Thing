global.commonItemAmount = 4;
global.uncommonItemAmount = 4;
global.rareItemAmount = 4;

global.items = array_create(3, 0);

global.items[1, 1] = commonScope;
global.items[1, 2] = commonMagazine;
global.items[1, 3] = commonMuzzle;
global.items[1, 4] = commonStock;
global.items[2, 1] = unCommonScope;
global.items[2, 2] = unCommonMagazine;
global.items[2, 3] = unCommonMuzzle;
global.items[2, 4] = unCommonStock;
global.items[3, 1] = rareScope;
global.items[3, 2] = rareMagazine;
global.items[3, 3] = rareMuzzle;
global.items[3, 4] = rareStock;

global.playerWeapons = array_create(3);
global.playerWeapons[0, 0] = noone;
global.playerWeapons[1, 0] = oPistol;
global.playerWeapons[1, 1] = true;
global.playerWeapons[2, 0] = oRocketLauncher;
global.playerWeapons[2, 1] = true;

//these can most likely be deprecated
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

// director macros
enum DIRECTOR {
	FLOATINGROCKMINX = 64,
	FLOATINGROCKMAXX = 3935,
	FLOATINGROCKMINY = 64,
	FLOATINGROCKMAXY = 1985
}