// create camera
var _camera = camera_create_view(0, 0, RES.WIDTH, RES.HEIGHT, 0, oPlayer, -1, -1, RES.WIDTH/2, RES.HEIGHT/2);

// set up view
view_enabled = true;
view_visible[0] = true;
view_wport[0] = RES.WIDTH;
view_hport[0] = RES.HEIGHT;
view_set_camera(0, _camera);