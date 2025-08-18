owner = noone;
minion_idx = instance_number(obj_demon_minion);

life = 50;

take_damage = function(damage) {
    life -= damage;
}
