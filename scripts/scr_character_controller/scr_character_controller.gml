function CharacterController(inst) constructor {
    update = function() {
        var move_x = -keyboard_check(ord("A"))+keyboard_check(ord("D"));
        
        if move_x != 0 {
            __hsp = lerp(__hsp, move_x*3, .1);
            __face = move_x;
        } else {
            __hsp = lerp(__hsp, 0, .3);
        }

        var on_ground = __inst.place_meeting(__inst.x, __inst.y+1, obj_solid);

        if on_ground {
            if keyboard_check(vk_space) {
                __vsp = -4;
            }
        } else {
            __vsp += .2;
        }

        var in_solid = __inst.place_meeting(__inst.x, __inst.y, obj_solid);
        if __inst.place_meeting(__inst.x + __hsp, __inst.y, obj_solid) && !in_solid { 
            __inst.x = __hsp > 0 ? floor(__inst.x) : ceil(__inst.x);
            while !__inst.place_meeting(__inst.x + sign(__hsp), __inst.y, obj_solid) {
                __inst.x += sign(__hsp);
            }
            __hsp = 0;
        }
        __inst.x += __hsp;

        if __inst.place_meeting(__inst.x, __inst.y + __vsp, obj_solid) { 
            __inst.y = __vsp > 0 ? floor(__inst.y) : ceil(__inst.y);
            while !__inst.place_meeting(__inst.x, __inst.y + sign(__vsp), obj_solid) {
                __inst.y += sign(__vsp);
            }
            __vsp = 0;
        }
        __inst.y += __vsp;
    }
    
    reset = function() {
        __hsp = 0;
        __vsp = 0;
    }
    apply_force = function(hsp, vsp) {
        __hsp += hsp;
        __vsp += vsp;
    }

    get_face = function() {
        return __face;
    }

    __inst = inst;
    __face = 1;
    __hsp = 0;
    __vsp = 0;
}
