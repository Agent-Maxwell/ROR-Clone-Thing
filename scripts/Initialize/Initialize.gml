
enum RES {
	WIDTH = 1280,
	HEIGHT = 720,
}

// resize game surface
surface_resize(application_surface, RES.WIDTH, RES.HEIGHT);

// resize window
var _windowWidth = RES.WIDTH;
var _windowHeight = RES.HEIGHT;

window_set_size(_windowWidth, _windowHeight);
