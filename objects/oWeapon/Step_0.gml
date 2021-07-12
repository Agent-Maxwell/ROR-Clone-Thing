leftClick = mouse_check_button(mb_left);

// try to shoot
if (leftClick && canShoot && weaponIsActive) {
	Shoot(projectileTarget, projectileDamage, weaponAmmotype, projectileSpeedSubtractor, maxProjectileSpeed, projectileSpreadAmount, projectileKnockback, projectileExplosionRadius, projectileLifetime, projectileSprite, itemSpeedChangeAmount, itemSpreadChangeAmount, itemKnockbackChangeAmount, itemExplosionRadiusChangeAmount, itemDamageChangeAmount);
	alarm[0] = weaponCooldown;
	canShoot = false;
}

// keep on player
 if (instance_exists(oPlayer)) {
x = oPlayer.x;
y = oPlayer.y;
image_angle = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);
image_xscale = -1;
 }