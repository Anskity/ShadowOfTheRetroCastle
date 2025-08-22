#macro GHOST_ISLAND_MARGIN (16*10)
#macro GHOST_HAND_MARGIN (ceil(sprite_get_width(spr_ghost)*.7))
function GhostAttack1(inst) constructor {
    update = function() {
        var margin = sprite_get_width(spr_ghost)*.7;
        var strong_shake_x = sin(current_time*.02)*10;
        var strong_shake_y = sin(current_time*.025)*10;
        var weak_shake_x = sin(current_time*.01)*5;
        var weak_shake_y = sin(current_time*.007)*5;

        var right_x = __inst.x + margin;
        var right_y = __inst.y;
        if !__is_left {
            right_x += strong_shake_x;
            right_y += strong_shake_y;
            right_y -= margin;
        }  else {
            right_y += margin;
            right_x += weak_shake_x;
            right_y += weak_shake_y;
        }

        __inst.right_hand_x = lerp(__inst.right_hand_x, right_x, .3);
        __inst.right_hand_y = lerp(__inst.right_hand_y, right_y, .3);

        var left_x = __inst.x - margin;
        var left_y = __inst.y;
        if __is_left {
            left_x += strong_shake_x;
            left_y += strong_shake_y;
            left_y -= margin;
        }  else {
            left_y += margin;
            left_x += weak_shake_x;
            left_y += weak_shake_y;
        }

        __inst.left_hand_x = lerp(__inst.left_hand_x, left_x, .3);
        __inst.left_hand_y = lerp(__inst.left_hand_y, left_y, .3);

        if !__started {
            __start_timer.tick();
        } else {
            __spawn_timer.tick();
        }

        return __leftovers = 0;
	}

    __inst = inst;
    __spawn_timer = new Timer(.3, function() {
        if __leftovers > 0 { __leftovers -= 1; };
        var spr_h = sprite_get_height(spr_ghost_spear);
        var pos_x = __is_left ? random(GHOST_ISLAND_MARGIN) : room_width-random(GHOST_ISLAND_MARGIN);
        instance_create_depth(pos_x, spr_h, __inst.depth, obj_ghost_spear);
    });
    __start_timer = new Timer(1, function() {
        __started = true;
    });
    __started = false;
    __leftovers = 9;
    __is_left = choose(true, false);
}
