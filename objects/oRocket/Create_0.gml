// variables
lifetime = 200;
rocketSpeed = 4.5;
damage = 1;

// set alarm
//alarm[0] = lifetime;

// set direction and angle
rocketDirection = point_direction(oPlayer.x, oPlayer.y, mouse_x, mouse_y);

direction = rocketDirection;
image_angle = rocketDirection;
speed = rocketSpeed;
