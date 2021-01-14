// changeable variables
playerGravity = global.playerVariables[1, 1];
walkSpeed = global.playerVariables[1, 2];
jumpHeight = global.playerVariables[1, 3];
jumps = global.playerVariables[1, 4];
rocketCooldown = global.playerVariables[1, 5];
bulletCooldown = global.playerVariables[1, 6];
bulletDamage = global.playerVariables[1, 7];
rocketDamage = global.playerVariables[1, 8];

// unchangeable variables
horizontalSpeed = 0;
verticalSpeed = 0;
currentRocketCooldown = rocketCooldown;
currentBulletCooldown = bulletCooldown;

// create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

// set up view
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, _camera);