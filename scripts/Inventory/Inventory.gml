global.inventoryLength = 12;

global.inventory = array_create(8);

// runs once to initialize the inventory as empty
var invinit = false

if (!invinit) {
for (var i = 0; i < array_length(global.inventory); i++) {
	
	global.inventory[i, 0] = noone;
	global.inventory[i, 1] = noone;
	global.inventory[i, 2] = noone;
	global.inventory[i, 3] = noone;
	global.inventory[i, 4] = noone;
	global.inventory[i, 5] = noone;
	global.inventory[i, 6] = noone;
	global.inventory[i, 7] = noone;
	global.inventory[i, 8] = noone;
	global.inventory[i, 9] = noone;
	global.inventory[i, 10] = noone;
	global.inventory[i, 11] = noone;
	
	if (i = array_length(global.inventory)-1) {
		invinit = true
	}
}
}

// mouse variables
global.mouseHasItem = 0;
global.mouseItem = noone;

global.mouseInventory = array_create(1);

global.mouseInventory[0, 0] = noone;
global.mouseInventory[0, 1] = noone;
global.mouseInventory[0, 2] = noone;
global.mouseInventory[0, 3] = noone;
global.mouseInventory[0, 4] = noone;
global.mouseInventory[0, 5] = noone;
global.mouseInventory[0, 6] = noone;
global.mouseInventory[0, 7] = noone;
global.mouseInventory[0, 8] = noone;
global.mouseInventory[0, 9] = noone;
global.mouseInventory[0, 10] = noone;
global.mouseInventory[0, 11] = noone;

function toggleInventory() {
	inventoryOpen = !inventoryOpen;
	if (instance_exists(oInventorySlot)) {
		instance_destroy(oInventorySlot);
	}
	invSlotsDrawn = false;
	weaponInvSlotsDrawn = false;
	
	// make it so you cant shoot
	with (oPlayer.currentWeapon) {
		weaponIsActive = !weaponIsActive;
	}
	
	//make sure you dont keep holding an item after inv is closed
	if (global.mouseHasItem) {
		global.mouseHasItem = false;
		// reset mouse inv
		for( i = 0; i < global.inventoryLength; i++) {
			global.mouseInventory[0, i] = noone;
		}
	}
	playerStartingYPos = oPlayer.y;
}

// weapon inventory macros
#macro MAGAZINE 0
#macro SCOPE 1
#macro STOCK 2
#macro MUZZLE 3
