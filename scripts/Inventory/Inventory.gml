global.inventory = array_create(8);

// runs once to initialize the inventory as empty
var invinit = false

if (!invinit) {
for (var i = 0; i < array_length(global.inventory); i++) {
	
	global.inventory[i, 0] = 0;
	global.inventory[i, 1] = 0;
	global.inventory[i, 2] = 0;
	global.inventory[i, 3] = 0;
	global.inventory[i, 4] = 0;
	global.inventory[i, 5] = 0;
	global.inventory[i, 6] = 0;
	global.inventory[i, 7] = 0;
	global.inventory[i, 8] = 0;
	global.inventory[i, 9] = 0;
	global.inventory[i, 10] = 0;
	global.inventory[i, 11] = 0;
	
	if (i = array_length(global.inventory)-1) {
		invinit = true
	}
}
}

// mouse variables
global.mouseHasItem = 0;
global.mouseItem = noone;

global.mouseInventory = array_create(1);

global.mouseInventory[0, 0] = 0;
global.mouseInventory[0, 1] = 0;
global.mouseInventory[0, 2] = 0;
global.mouseInventory[0, 3] = 0;
global.mouseInventory[0, 4] = 0;
global.mouseInventory[0, 5] = 0;
global.mouseInventory[0, 6] = 0;
global.mouseInventory[0, 7] = 0;
global.mouseInventory[0, 8] = 0;
global.mouseInventory[0, 9] = 0;
global.mouseInventory[0, 10] = 0;
global.mouseInventory[0, 11] = 0;

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
		for( i = 0; i < array_length(global.mouseInventory); i++) {
			global.mouseInventory[0, i] = 0;
		}
	}
	playerStartingYPos = oPlayer.y;
}

// weapon inventory macros
#macro MAGAZINE 0
#macro SCOPE 1
#macro STOCK 2
#macro MUZZLE 3
