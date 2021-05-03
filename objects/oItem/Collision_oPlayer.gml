// say which item was picked up
show_debug_message("picked up " + itemName);

// apply item affects
//applyItemAffects(itemVariable, itemChangeAmount, itemOperatorType);

// add item to inventory
var itemAlreadyThere = false;

for (var i = 0; i < array_length(global.inventory); i++) {

if (global.inventory[i] != 0) {
if (global.inventory[i].sprite == item.sprite) {
	itemAlreadyThere = true;
}
}
}

if (!itemAlreadyThere) {
	global.inventory[i] = item.sprite;
}

//destroy
instance_destroy();