function DemonHeadAttack3(inst) constructor {
    update = function() {
        __heal_timer.tick();
        return !instance_exists(__minion);
    }
    
    assert_exists(inst);

    __inst = inst;
    __minion = instance_create_depth(__inst.x, __inst.y, 0, obj_demon_minion);
    __minion.owner = __inst;
    __minion.depth = __inst.depth-1;

    __heal_timer = new Timer(1, function() {
        __inst.life += 0;
    });
}
