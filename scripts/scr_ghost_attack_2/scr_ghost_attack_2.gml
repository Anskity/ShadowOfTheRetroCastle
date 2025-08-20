function GhostAttack2(inst) constructor {
    update = function() {
        __inst.default_hand_shake();

        if __leftovers > 0 {
            __spawn_timer.tick();
        }

        var has_preparing = false;
        with obj_ghost_xuriken {
            if !attacking {
                has_preparing = true;
            }
        }
        
        return __leftovers == 0 && !has_preparing;
    }

    __inst = inst;
    __leftovers = 10;
    __spawn_timer = new Timer(.25, function() {
        assert(__leftovers > 0);
        __leftovers -= 1;

        instance_create_depth(__inst.x, __inst.y, __inst.depth-1, obj_ghost_xuriken);
    });
}
