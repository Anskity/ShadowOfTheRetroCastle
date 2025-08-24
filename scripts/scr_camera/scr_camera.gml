function __ResolutionManager() constructor {
    update = function() {
        if keyboard_check_pressed(vk_f11) {
            window_set_fullscreen(!window_get_fullscreen());

            if window_get_fullscreen() {
                surface_resize(application_surface, display_get_width(), display_get_height());
            } else {
                surface_resize(application_surface, __window_w, __window_h);
            }
        }

        __shake_spd_x = lerp(__shake_spd_x, -__shake_x, .3);
        __shake_spd_y = lerp(__shake_spd_y, -__shake_y, .3);
        __shake_x += __shake_spd_x;
        __shake_y += __shake_spd_y;

        camera_set_view_pos(view_camera[0], __shake_x, __shake_y);
        camera_set_view_size(view_camera[0], 640, 360);
}


    screenshake = function(force) {
        __shake_spd_x += force * choose(1, -1);
        __shake_spd_y += force * choose(1, -1);
    }

    __window_w = 1280;
    __window_h = 720;
    if display_get_width() < 1400 {
        __window_w = 640;
        __window_h = 360;
    }
    __shake_x = 0;
    __shake_y = 0;
    __shake_spd_x = 0;
    __shake_spd_y = 0;
    window_set_size(__window_w, __window_h);
    window_center();

    surface_resize(application_surface, __window_w, __window_h);
    display_set_gui_size(640, 360);
}

globalvar ResolutionManager;
ResolutionManager = new __ResolutionManager();

