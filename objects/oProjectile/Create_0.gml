// variables
lifetime = -1;
projSpeed = 0;
explosionRadius = -1;
projDamage = 0;
projKnockback = 0;

// set alarm
if (lifetime != -1) {
alarm[0] = lifetime;
}

// set direction and angle
projDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);

direction = projDirection;
image_angle = projDirection;
speed = projSpeed;
