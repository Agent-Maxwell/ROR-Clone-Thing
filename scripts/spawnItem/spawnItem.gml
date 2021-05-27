
function spawnItem(rarity, number){

heightToAdjust = 40;

// find which common item to spawn
if (rarity = 1) {
	switch (number) {
		case 1:
		spawnedItem = instance_create_layer(x, y - heightToAdjust, "Instances", oItem);
		
		with (spawnedItem) {
			item = new commonScope();
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
			item = new unCommonScope();
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
			item = new rareScope();
		break;
		}
	}
}
with (spawnedItem) {
sprite_index = item.sprite;
itemSprite = item.sprite;
itemName = item.name;
itemDescription = item.description;
itemSlotType = item.slotType;
itemNumber = number;
itemRarity = rarity;
itemVariable = item.variableToChange;
itemChangeAmount = item.changeAmount;
itemOperatorType = item.operatorType;
itemSpecialAttribute = item.specialAttribute;
itemBaseVariable = item.baseVariable;
itemPercentage = item.percentage;
}
}