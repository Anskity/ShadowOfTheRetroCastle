function GhostAttack2(inst) constructor {
    update = function() {
        __inst.default_hand_shake();

        var has_preparing = false;
        with obj_ghost_xuriken {
            if !attacking {
                has_preparing = true;
            }
        }
        
        return !has_preparing;
    }

    __inst = inst;
    
    repeat 10 {
        instance_create_depth(__inst.x, __inst.y, __inst.depth-1, obj_ghost_xuriken);
    }
}
