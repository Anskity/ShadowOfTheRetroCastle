function DemonHeadAttack1(inst) constructor {
    update = function() {
        return !instance_exists(__laser);
    }
    
    assert_exists(inst);

    __inst = inst;
    __laser = instance_create_depth(__inst.x, __inst.y, 0, obj_demon_head_laser);
}
