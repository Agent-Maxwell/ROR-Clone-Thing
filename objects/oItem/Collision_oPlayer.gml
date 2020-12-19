// say which item was picked up
show_debug_message("picked up " + itemName);

// apply item affects
applyItemAffects(itemVariable, itemChangeAmount, itemOperatorType);

//destroy
instance_destroy();