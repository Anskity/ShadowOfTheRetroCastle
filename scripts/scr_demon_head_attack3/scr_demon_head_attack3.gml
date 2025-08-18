function DemonHeadAttack3(inst) constructor {
    update = function() {
        return !instance_exists(__minion);
    }
    
    assert_exists(inst);

    __inst = inst;
    __minion = instance_create_depth(__inst.x, __inst.y, 0, obj_demon_minion);
    __minion.owner = __inst;
    __minion.depth = __inst.depth-1;
}
