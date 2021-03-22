// say which item was picked up
show_debug_message("picked up " + itemName);

// apply item affects
applyItemAffects(itemVariable, itemChangeAmount, itemOperatorType);

// add item to inventory
 var itemAlreadyThere = false;

for (var i = 0; i < ds_list_size(global.inventory); i++) {
	var myItem = global.inventory[| i];

if (myItem.sprite == item.sprite) {
	global.inventory[| i].amount += 1;
	itemAlreadyThere = true;
}
}

if (!itemAlreadyThere) {
	ds_list_add(global.inventory, item);
}

//destroy
instance_destroy();