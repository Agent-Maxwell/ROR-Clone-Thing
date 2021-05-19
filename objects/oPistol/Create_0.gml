event_inherited();

// weapon variables
weaponName = "Pistol";
weaponAmmotype = "Bullet";
weaponIsActive = true;
image_alpha = 1;

// projectile variables
maxProjectileSpeed = 10;
minProjectileSpeed = 9;
projectileSpreadAmount = 1;
projectileKnockback = 0;
projectileLifetime = -1;
projectileExplosionRadius = -1;
projectileSprite = sBullet;
projectileBaseDamage = 5;
projectileDamage = projectileBaseDamage;

// shoot cooldown variables
canShoot = true;
weaponCooldown = 20;

// inventory display variables
weaponLargeSprite = sPistolLarge;
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
weaponInventory[0, 4] = noone; //variable it changes
weaponInventory[0, 5] = noone; //how much it changes it by
weaponInventory[0, 6] = noone; //the operator type
weaponInventory[0, 7] = noone; //special attribute

// scope
weaponInventory[1, 0] = noone; //sprite
weaponInventory[1, 1] = noone; //name
weaponInventory[1, 2] = noone; //description
weaponInventory[1, 3] = noone; // rarity
weaponInventory[1, 4] = noone; //variable it changes
weaponInventory[1, 5] = noone; //how much it changes it by
weaponInventory[1, 6] = noone; //the operator type
weaponInventory[1, 7] = noone; //special attribute

// stock
weaponInventory[2, 0] = noone; //sprite
weaponInventory[2, 1] = noone; //name
weaponInventory[2, 2] = noone; //description
weaponInventory[2, 3] = noone; // rarity
weaponInventory[2, 4] = noone; //variable it changes
weaponInventory[2, 5] = noone; //how much it changes it by
weaponInventory[2, 6] = noone; //the operator type
weaponInventory[2, 7] = noone; //special attribute

// muzzle
weaponInventory[3, 0] = noone; //sprite
weaponInventory[3, 1] = noone; //name
weaponInventory[3, 2] = noone; //description
weaponInventory[3, 3] = noone; // rarity
weaponInventory[3, 4] = noone; //variable it changes
weaponInventory[3, 5] = noone; //how much it changes it by
weaponInventory[3, 6] = noone; //the operator type
weaponInventory[3, 7] = noone; //special attribute