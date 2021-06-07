paused = false;
freezeFrame = -1;
inventoryOpen = false;
invSlotsDrawn = false;
weaponInvSlotsDrawn = false;
playerStartingYPos = 0;

// weapon slot array
global.weaponSlotArray = array_create(4);

global.weaponSlotArray[0] = noone;
global.weaponSlotArray[1] = noone;
global.weaponSlotArray[2] = noone;
global.weaponSlotArray[3] = noone;

// make sure everything is randomized
randomize();