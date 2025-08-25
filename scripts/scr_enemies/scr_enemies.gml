globalvar EnemyInsts;
EnemyInsts = [obj_demon_head, obj_demon_minion, obj_ghost];

function attack_wizard() {
    var wizard = instance_place(x, y, obj_wizard);
    if instance_exists(wizard) {
        wizard.take_damage();
        return true;
    }

    return false;
}

global.defeated_demon = false;
