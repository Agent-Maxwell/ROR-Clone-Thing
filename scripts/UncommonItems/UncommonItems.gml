function sugarPatch () : Item () constructor {
	name = "Sugar Patch";
	rarity = 2;
	sprite = sSugarPatch;
	variableToChange = 2;
	changeAmount = 1;
	operatorType = "+";
	amount = 1;
	description = "Increases walk speed by 1 per stack.\n\nTotal walk speed increase:" + string(changeAmount*amount);
}