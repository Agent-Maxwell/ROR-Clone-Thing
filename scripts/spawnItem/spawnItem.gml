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

function spawnSpecificItem (myX, myY, myName, mySlotType, myRarity, mySprite, myVariable, myBaseVariable, myChangeAmount, myOperatorType, myPercentage, myDescription, mySpecialAttribute, myNumber) {
	
	spawnedItem = instance_create_layer(myX, myY, "Instances", oItem);
	
	with (spawnedItem) {
	sprite_index = mySprite;
	itemName = myName;
	itemSlotType = mySlotType;
	itemRarity = myRarity;
	itemSprite = mySprite;
	itemVariable = myVariable;
	itemBaseVariable = myBaseVariable;
	itemChangeAmount = myChangeAmount;
	itemOperatorType = myOperatorType;
	itemPercentage = myPercentage;
	itemDescription = myDescription;
	itemSpecialAttribute = mySpecialAttribute;
	itemNumber = myNumber;
	}
}