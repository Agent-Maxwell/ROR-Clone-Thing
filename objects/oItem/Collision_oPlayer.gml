// say which item was picked up
show_debug_message("picked up " + itemName);

var pickedUp = false;

for (var i = 0; i < array_length(global.inventory); i++) {

if (global.inventory[i, 0] = 0 && pickedUp = false) {
	pickedUp = true;
	
	global.inventory[i, 0] = itemName;
	global.inventory[i, 1] = itemSlotType;
	global.inventory[i, 2] = itemRarity;
	global.inventory[i, 3] = itemSprite;
	global.inventory[i, 4] = itemVariable;
	global.inventory[i, 5] = itemChangeAmount;
	global.inventory[i, 6] = itemOperatorType;
	global.inventory[i, 7] = itemDescription;
	global.inventory[i, 8] = itemSpecialAttribute;
	global.inventory[i, 9] = itemNumber;
}
}

if (pickedUp) {
instance_destroy();
}