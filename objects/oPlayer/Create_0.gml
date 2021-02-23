applyGlobalVariables();

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