// weapon variables
weaponName = "";
weaponAmmotype = "";
weaponIsActive = false;
image_alpha = 0;

// projectile variables
maxProjectileSpeed = 0;
minProjectileSpeed = 0;
projectileSpreadAmount = 0;
projectileKnockback = 0;
projectileLifetime = -1;
projectileExplosionRadius = -1;
projectileSprite = 0;
projectileBaseDamage = 0;
projectileDamage = projectileBaseDamage;

// shoot cooldown variables
canShoot = true;
weaponCooldown = 0;

// inventory display variables
weaponLargeSprite = noone;
weaponMagazineX = 0;
weaponMagazineY = 0;
weaponScopeX = 0;
weaponScopeY = 0;
weaponStockX = 0;
weaponStockY = 0;
weaponMuzzleX = 0;
weaponMuzzleY = 0;

// internal weapon inventory variables
weaponInventory = array_create(4);

// magazine
weaponInventory[0, 0] = noone; //sprite
weaponInventory[0, 1] = noone; //name
weaponInventory[0, 2] = noone; //description
weaponInventory[0, 3] = noone; // rarity
weaponinventory[0, 4] = noone; //variable it changes
weaponinventory[0, 5] = noone; //how much it changes it by
weaponinventory[0, 6] = noone; //the operator type
weaponinventory[0, 7] = noone; //special attribute

// scope
weaponInventory[0, 0] = noone; //sprite
weaponInventory[0, 1] = noone; //name
weaponInventory[0, 2] = noone; //description
weaponInventory[0, 3] = noone; // rarity
weaponinventory[0, 4] = noone; //variable it changes
weaponinventory[0, 5] = noone; //how much it changes it by
weaponinventory[0, 6] = noone; //the operator type
weaponinventory[0, 7] = noone; //special attribute

// stock
weaponInventory[0, 0] = noone; //sprite
weaponInventory[0, 1] = noone; //name
weaponInventory[0, 2] = noone; //description
weaponInventory[0, 3] = noone; // rarity
weaponinventory[0, 4] = noone; //variable it changes
weaponinventory[0, 5] = noone; //how much it changes it by
weaponinventory[0, 6] = noone; //the operator type
weaponinventory[0, 7] = noone; //special attribute

// muzzle
weaponInventory[0, 0] = noone; //sprite
weaponInventory[0, 1] = noone; //name
weaponInventory[0, 2] = noone; //description
weaponInventory[0, 3] = noone; // rarity
weaponinventory[0, 4] = noone; //variable it changes
weaponinventory[0, 5] = noone; //how much it changes it by
weaponinventory[0, 6] = noone; //the operator type
weaponinventory[0, 7] = noone; //special attribute