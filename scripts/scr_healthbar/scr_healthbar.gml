function Healthbar(config) constructor {
    update = function(life) {
        assert_exists(life);
        __life = life;
    }

    render = function() {
        var padding = 32;
        var heart_area = __life * 26;
        var width = padding + heart_area;

        var bar_xscale = width / sprite_get_width(spr_healthbar);

        GET_GUI_SIZE;
        var pos_y = ceil(gui_h*.9);
        draw_sprite_ext(spr_healthbar, 0, gui_w/2, pos_y, bar_xscale, 1, 0, c_white, 1);

        for (var i = 0; i < __life; i++) {
            var pos_x = gui_w/2 - heart_area/2 + heart_area*(i+.5)/__life;
            draw_sprite(spr_heart, 0, pos_x, pos_y);
        }
    }

    __life = config.life;
}
