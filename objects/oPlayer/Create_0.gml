playerGravity = global.playerVariables[1, 1];
walkSpeed = global.playerVariables[1, 2];
jumpHeight = global.playerVariables[1, 3];
maxJumps = global.playerVariables[1, 4];
jumps = maxJumps;

// unchangeable variables
horizontalSpeed = 0;
verticalSpeed = 0;

// create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

// set up view
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, _camera);

// weapon states
currentWeapon = oPistol;