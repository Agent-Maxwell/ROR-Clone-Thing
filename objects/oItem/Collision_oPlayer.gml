// say which item was picked up
show_debug_message("picked up " + itemName);

var pickedUp = false;

for (var i = 0; i < array_length(global.inventory); i++) {
if (global.inventory[i, 0] = 0 || global.inventory[i, 0] = noone) {
if (pickedUp = false) {
	pickedUp = true;
	
	global.inventory[@ i, 0] = itemName;
	global.inventory[@ i, 1] = itemSlotType;
	global.inventory[@ i, 2] = itemRarity;
	global.inventory[@ i, 3] = itemSprite;
	global.inventory[@ i, 4] = itemVariable;
	global.inventory[@ i, 5] = itemBaseVariable;
	global.inventory[@ i, 6] = itemChangeAmount;
	global.inventory[@ i, 7] = itemOperatorType;
	global.inventory[@ i, 8] = itemPercentage;
	global.inventory[@ i, 9] = itemDescription;
	global.inventory[@ i, 10] = itemSpecialAttribute;
	global.inventory[@ i, 11] = itemNumber;
}
}
}

if (pickedUp) {
instance_destroy();
}