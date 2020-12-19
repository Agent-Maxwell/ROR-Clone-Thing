function applyItemAffects (myVariable, myChangeAmount, myOperatorType){
	
	if (myOperatorType = "+") {
		global.playerVariables[1, myVariable] += myChangeAmount;
	}

	if (myOperatorType = "-") {
		global.playerVariables[1, myVariable] -= myChangeAmount;
	}
	
	if (myOperatorType = "*") {
		global.playerVariables[1, myVariable] *= myChangeAmount;
	}
	
	if (myOperatorType = "/") {
		global.playerVariables[1, myVariable] /= myChangeAmount;
	}
}

