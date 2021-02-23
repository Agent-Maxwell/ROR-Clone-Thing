// Inherit the parent event
event_inherited();

//lifetime = 200;
projSpeed = global.playerVariables[1, 13];
explosionRadius = global.playerVariables[1, 11];
projDamage = global.playerVariables[1, 8];
projKnockback = global.playerVariables[1, 10];

direction = projDirection;
image_angle = projDirection;
speed = projSpeed;
image_xscale = -1;