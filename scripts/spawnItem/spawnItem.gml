
function spawnItem(rarity, number){

heightToAdjust = 40;

// find which common item to spawn
if (rarity = 1) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - heightToAdjust, "Instances", oItem);
		
		with (spawnedItem) {
			item = new weaponPolish();
		break;
		}
	}
}

// find which uncommon item to spawn
if (rarity = 2) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - heightToAdjust, "Instances", oItem);
		
		with (spawnedItem) {
			item = new sugarPatch();
		break;
		}
	}
}

// find which rare item to spawn
if (rarity = 3) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - heightToAdjust, "Instances", oItem);
		
		with (spawnedItem) {
			item = new angelWings();
		break;
		}
	}
}
with (spawnedItem) {
sprite_index = item.sprite;
itemName = item.name;
itemNumber = number;
itemRarity = rarity;
itemVariable = item.variableToChange;
itemChangeAmount = item.changeAmount;
itemOperatorType = item.operatorType;
}
}