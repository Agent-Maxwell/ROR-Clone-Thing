randomize();

function chooseRandomItem(containerType){
	
	// set chance values
if (containerType == "normal") {
	commonChance = 60;
	uncommonChance = 30;
	rareChance = 10;
}

// get random number
randomNumber = irandom_range(0, 100);

// choose rarity and call second script
if (randomNumber <= commonChance) {
	chooseItemOfRarity(1);
}else if (randomNumber > commonChance && randomNumber <= commonChance + uncommonChance) {
	chooseItemOfRarity(2);
}else if (randomNumber > 100 - rareChance && randomNumber <= 100) {
	chooseItemOfRarity(3);
}else{
	show_debug_message("Something has gone very wrong with the random item script");
}

}


function chooseItemOfRarity(rarity) {
	if (rarity = 1) {
		itemNum = irandom_range(1, global.commonItemAmount);
		spawnItem(1, itemNum);
	}else if (rarity == 2) {
		itemNum = irandom_range(1, global.uncommonItemAmount);
		spawnItem(2, itemNum);
	}else if (rarity == 3) {
		itemNum = irandom_range(1, global.rareItemAmount);
		spawnItem(3, itemNum);
	}else{
		show_debug_message("Something has gone very wrong with the random item script");
	}
}