// reset item variables
itemSpeedChangeAmount = 0;
itemSpreadChangeAmount = 0;
itemKnockbackChangeAmount = 0;
itemExplosionRadiusChangeAmount = 0;
itemDamageChangeAmount = 0;


// loop through all weapon inventory slots and apply their weapon change variables (if they have any)
for (i = 0; i < array_length(weaponInventory); i++) {
	// make sure we actually have something in the slot
	if (weaponInventory[i, 0] != noone && weaponInventory[i, 0] != 0) {
		// check to see if it is percentage based
		if (weaponInventory[i, 8] = true) {
			// if percentage based, then change value (ex: 30 --> .3)
			var _value = (weaponInventory[i, 6] * .01);
		} else {
			var _value = weaponInventory[i, 6];
		}
		
		// i have to use this disgusting mostrosity because of gamemakers refusal to let me use one variable to reference another
		// actually the worst thing ever
		switch weaponInventory[i, 7] {
			case "+":
				switch weaponInventory[i, 4] {
					case "itemSpeedChangeAmount":
						if (weaponInventory[i, 8]) {
							itemSpeedChangeAmount += (maxProjectileSpeed * _value);
						} else {
							itemSpeedChangeAmount += _value;
						}
					break
			
					case "itemSpreadChangeAmount":
						if (weaponInventory[i, 8]) {
							itemSpreadChangeAmount += (projectileSpreadAmount * _value);
						} else {
							itemSpreadChangeAmount += _value;
						}

					break
			
					case "itemKnockbackChangeAmount":
						if (weaponInventory[i, 8]) {
							itemKnockbackChangeAmount += (projectileKnockback * _value);
						} else {
							itemKnockbackChangeAmount += _value;
						}
					break
			
					case "itemExplosionRadiusChangeAmount":
						if (weaponInventory[i, 8]) {
							itemExplosionRadiusChangeAmount += (projectileExplosionRadius * _value);
						} else {
							itemExplosionRadiusChangeAmount += _value;
						}
					break
			
					case "itemDamageChangeAmount":
						if (weaponInventory[i, 8]) {
							itemDamageChangeAmount += (projectileDamage * _value);
						} else {
							itemDamageChangeAmount += _value;
						}
					break			
				}
			break
				
			case "-":
				switch weaponInventory[i, 4] {
					case "itemSpeedChangeAmount":
						if (weaponInventory[i, 8]) {
							itemSpeedChangeAmount -= (maxProjectileSpeed * _value);
						} else {
							itemSpeedChangeAmount -= _value;
						}
					break
			
					case "itemSpreadChangeAmount":
						if (weaponInventory[i, 8]) {
							itemSpreadChangeAmount -= (projectileSpreadAmount * _value);
						} else {
							itemSpreadChangeAmount -= _value;
						}
					break
			
					case "itemKnockbackChangeAmount":
						if (weaponInventory[i, 8]) {
							itemKnockbackChangeAmount -= (projectileKnockback * _value);
						} else {
							itemKnockbackChangeAmount -= _value;
						}
					break
			
					case "itemExplosionRadiusChangeAmount":
						if (weaponInventory[i, 8]) {
							itemExplosionRadiusChangeAmount -= (projectileExplosionRadius * _value);
						} else {
							itemExplosionRadiusChangeAmount -= _value;
						}
					break
			
					case "itemDamageChangeAmount":
						if (weaponInventory[i, 8]) {
							itemDamageChangeAmount -= (projectileDamage * _value);
						} else {
							itemDamageChangeAmount -= _value;
						}
					break			
				}
			break
				
			case "/":
				//unused
			break

			case "*":
				//unused
			break
		}
	}
}
