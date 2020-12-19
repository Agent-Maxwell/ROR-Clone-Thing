
function spawnItem(rarity, number){	
// find which common item to spawn
if (rarity = 1) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - 125, "Instances", oItem);
		
		with (spawnedItem) {
			item = new weaponPolish();
			object_set_sprite(1, item.sprite);
			itemName = item.name;
			itemNumber = number;
			itemRarity = rarity;
			itemVariable = item.variableToChange;
			itemChangeAmount = item.changeAmount;
			itemOperatorType = item.operatorType;
		}
		
		break;
		}
}

// find which uncommon item to spawn
if (rarity = 2) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - 125, "Instances", oItem);
		
		with (spawnedItem) {
			item = new sugarPatch();
			object_set_sprite(1, item.sprite);
			itemName = item.name;
			itemNumber = number;
			itemRarity = rarity;
			itemVariable = item.variableToChange;
			itemChangeAmount = item.changeAmount;
			itemOperatorType = item.operatorType;
		break;
		}
	}
}

// find which rare item to spawn
if (rarity = 3) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - 125, "Instances", oItem);
		
		with (spawnedItem) {
			item = new angelWings();
			object_set_sprite(1, item.sprite);
			itemName = item.name;
			itemNumber = number;
			itemRarity = rarity;
			itemVariable = item.variableToChange;
			itemChangeAmount = item.changeAmount;
			itemOperatorType = item.operatorType;
		break;
		}
	}
}
}