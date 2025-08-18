function StaffController(inst) constructor {
    update = function() {
        var target_dir = point_direction(__inst.x, __inst.y-6, mouse_x, mouse_y);
        __dir = lerp_angle(__dir, target_dir, .2);

        if mouse_check_button(mb_left) && __can_shoot {
            var staff_pos = __get_staff_pos();
            var staff_x = staff_pos[0];
            var staff_y = staff_pos[1];

            var staff_w = sprite_get_width(spr_staff);
            var shoot_x = staff_x + lengthdir_x(staff_w, __dir);
            var shoot_y = staff_y + lengthdir_y(staff_w, __dir);

            instance_create_depth(shoot_x, shoot_y, 0, obj_bullet, {dir: __dir, damage: 13});
            __can_shoot = false;
        }

        if !__can_shoot {
            __shoot_timer.tick();
        }

        static dist = 10;
        var face = __dir == clamp(__dir, 90, 270) ? -1 : 1;
        var staff_x = __inst.x + dist*face;
        var staff_y = __inst.y - 6;
        __staff_x = lerp(__staff_x, staff_x, .4);
        __staff_y = lerp(__staff_y, staff_y, .3);
    }

    render = function() {
        var staff_pos = __get_staff_pos();
        var staff_x = staff_pos[0];
        var staff_y = staff_pos[1];

        draw_sprite_ext(spr_staff, 0, staff_x, staff_y, 1, 1, __dir, c_white, 1);
    }

    __inst = inst;
    __dir = 0;
    __get_staff_pos = function() {
        return [__staff_x, __staff_y];
    }
    __staff_x = __inst.x;
    __staff_y = __inst.y;
    __can_shoot = true;
    __shoot_timer = new Timer(.5, function() {
        __can_shoot = true;
    });
}
