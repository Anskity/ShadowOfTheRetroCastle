function StaffController(inst) constructor {
    update = function() {
        var target_dir = point_direction(__inst.x, __inst.y-6, mouse_x, mouse_y);
        __dir = lerp_angle(__dir, target_dir, .3);

        if mouse_check_button(mb_left) && __can_shoot {
            var staff_pos = __get_staff_pos();
            var staff_x = staff_pos[0];
            var staff_y = staff_pos[1];

            var staff_w = sprite_get_width(spr_staff);
            var shoot_x = staff_x + lengthdir_x(staff_w, __dir);
            var shoot_y = staff_y + lengthdir_y(staff_w, __dir);

            instance_create_depth(shoot_x, shoot_y, 0, obj_bullet, {dir: __dir});
            __can_shoot = false;
        }

        if !__can_shoot {
            __shoot_timer.tick();
        }
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
        static radius = 4;
        var staff_x = __inst.x + lengthdir_x(radius, __dir);
        var staff_y = __inst.y + lengthdir_y(radius, __dir);

        return [staff_x, staff_y];
    }
    __can_shoot = true;
    __shoot_timer = new Timer(.5, function() {
        __can_shoot = true;
    });
}
