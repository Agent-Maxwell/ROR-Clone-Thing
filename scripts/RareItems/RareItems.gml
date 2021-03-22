function angelWings () : Item () constructor {
	name = "Angel Wings";
	rarity = 3;
	sprite = sAngelWings;
	variableToChange = 4;
	changeAmount = 2;
	operatorType = "+";
	amount = 1;
	description = "Increases maximum airjumps by 2 per stack.\n\nTotal airjumps:" + (changeAmount*amount);
}