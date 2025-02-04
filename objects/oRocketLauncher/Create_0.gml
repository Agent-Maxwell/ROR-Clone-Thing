event_inherited();

// weapon variables
weaponName = "Rocket Launcher";
weaponAmmotype = "Rocket";

// projectile variables
maxProjectileSpeed = 5;
projectileSpeedSubtractor = 1;
projectileSpreadAmount = 0;
projectileKnockback = 10;
projectileLifetime = 40;
projectileExplosionRadius = 50;
projectileSprite = sRocket;
projectileDamage = 20;
projectileTarget = oEnemy;

// item variables
itemSpeedChangeAmount = 0;
itemSpreadChangeAmount = 0;
itemKnockbackChangeAmount = 0;
itemExplosionRadiusChangeAmount = 0;
itemDamageChangeAmount = 0;
itemCooldownChangeAmount = 0;

// shoot cooldown variables
canShoot = true;
weaponCooldown = 60;

// inventory display variables
weaponLargeSprite = sRocketLauncherLarge;

weaponSlotSpots = array_create(4);

weaponSlotSpots[0, 0] = -190; // magazine x
weaponSlotSpots[0, 1] = 75; // magazine y
						
weaponSlotSpots[1, 0] = -220; // scope x
weaponSlotSpots[1, 1] = -45; // scope y
						
weaponSlotSpots[2, 0] = -110; // stock x
weaponSlotSpots[2, 1] = 15;  // stock y
						
weaponSlotSpots[3, 0] = -370; // muzzle x
weaponSlotSpots[3, 1] = 15; // muzzle y

// internal weapon inventory variables
weaponInventory = array_create(4);

// magazine
weaponInventory[0, 0] = noone; //name
weaponInventory[0, 1] = noone; //slot type
weaponInventory[0, 2] = noone; //rarity
weaponInventory[0, 3] = noone; //sprite
weaponInventory[0, 4] = noone; //variable it changes
weaponInventory[0, 5] = noone; //base variable that will be affected
weaponInventory[0, 6] = noone; //how much it changes it by
weaponInventory[0, 7] = noone; //the operator type
weaponInventory[0, 8] = noone; //if the amount to change is a percentage or not
weaponInventory[0, 9] = noone; //description
weaponInventory[0, 10] = noone; //special attribute
weaponInventory[0, 11] = noone; //number 

	
// scope
weaponInventory[1, 0] = noone; //name
weaponInventory[1, 1] = noone; //slot type
weaponInventory[1, 2] = noone; //rarity
weaponInventory[1, 3] = noone; //sprite
weaponInventory[1, 4] = noone; //variable it changes
weaponInventory[1, 5] = noone; //base variable that will be affected
weaponInventory[1, 6] = noone; //how much it changes it by
weaponInventory[1, 7] = noone; //the operator type
weaponInventory[1, 8] = noone; //if the amount to change is a percentage or not
weaponInventory[1, 9] = noone; //description
weaponInventory[1, 10] = noone; //special attribute
weaponInventory[1, 11] = noone; //number 

// stock
weaponInventory[2, 0] = noone; //name
weaponInventory[2, 1] = noone; //slot type
weaponInventory[2, 2] = noone; //rarity
weaponInventory[2, 3] = noone; //sprite
weaponInventory[2, 4] = noone; //variable it changes
weaponInventory[2, 5] = noone; //base variable that will be affected
weaponInventory[2, 6] = noone; //how much it changes it by
weaponInventory[2, 7] = noone; //the operator type
weaponInventory[2, 8] = noone; //if the amount to change is a percentage or not
weaponInventory[2, 9] = noone; //description
weaponInventory[2, 10] = noone; //special attribute
weaponInventory[2, 11] = noone; //number 

// muzzle
weaponInventory[3, 0] = noone; //name
weaponInventory[3, 1] = noone; //slot type
weaponInventory[3, 2] = noone; //rarity
weaponInventory[3, 3] = noone; //sprite
weaponInventory[3, 4] = noone; //variable it changes
weaponInventory[3, 5] = noone; //base variable that will be affected
weaponInventory[3, 6] = noone; //how much it changes it by
weaponInventory[3, 7] = noone; //the operator type
weaponInventory[3, 8] = noone; //if the amount to change is a percentage or not
weaponInventory[3, 9] = noone; //description
weaponInventory[3, 10] = noone; //special attribute
weaponInventory[3, 11] = noone; //number 