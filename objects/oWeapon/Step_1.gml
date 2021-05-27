// loop through all weapon inventory slots and apply their weapon change variables (if they have any)
for (i = 0; i < array_length(weaponInventory); i++) {
	// make sure we actually have something in the slot
	if (weaponInventory[i, 0] != noone && weaponInventory[i, 0] != 0) {
		// check to see if it is percentage based
		if (weaponInventory[0, 8]) {
			// if percentage based, then change value (ex: 30 --> .3)
			var _value = (weaponInventory[0, 6] * .01);
		} else {
			var _value = weaponInventory[0, 6];
		}
		
		switch weaponInventory[i, 7] {
			case "+":
				if (weaponInventory[0, 8]) {
					weaponInventory[0, 4] += (weaponInventory[0, 5] * _value);
				} else {
					weaponInventory[0, 4] += _value;
				}
			break
				
			case "-":
				if (weaponInventory[0, 8]) {
					weaponInventory[0, 4] -= (weaponInventory[0, 5] * _value);
				} else {
					weaponInventory[0, 4] -= _value;
				}
			break
				
			case "/":
				
			break
				//unused
			case "*":
				//unused
			break
		}
	}
}

// modify projectile variables
maxProjectileSpeed += itemSpeedChangeAmount;
projectileSpreadAmount += itemSpreadChangeAmount;
projectileKnockback += itemKnockbackChangeAmount;
projectileExplosionRadius += itemExplosionRadiusChangeAmount;
projectileDamage += itemDamageChangeAmount;