// Inherit the parent event
event_inherited();

// weapon variables
weaponName = "Pistol";
weaponAmmotype = "Bullet";

// projectile variables
projectileSpeed = 10;
projectileKnockback = 0;
projectileLifetime = -1;
projectileExplosionRadius = 0;
projectileSprite = sBullet;
projectileBaseDamage = 5;
projectileDamage = projectileBaseDamage;

// shoot cooldown variables
canShoot = true;
weaponCooldown = 30;