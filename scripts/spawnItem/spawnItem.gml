function spawnItem(rarity, number){

heightToAdjust = 40;

spawnedItem = instance_create_layer(x, y - heightToAdjust, "Instances", oItem);

with (spawnedItem) {
	item = new global.items[rarity, number]();
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