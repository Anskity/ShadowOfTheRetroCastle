function ResolutionManager() constructor {
    update = function() {
        if keyboard_check_pressed(vk_f11) {
            window_set_fullscreen(!window_get_fullscreen());
        }
    }

    __window_w = 1280;
    __window_h = 720;
    if display_get_width() < 1400 {
        __window_w = 640;
        __window_h = 360;
    }
    window_set_size(__window_w, __window_h);
    window_center();

    surface_resize(application_surface, __window_w, __window_h);
}
