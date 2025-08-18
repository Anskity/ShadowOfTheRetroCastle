life = 500;

take_damage = function(damage) {
    life -= damage;
}

attack = {};
delete attack;
next_attack = function() {
    attack = new DemonHeadAttack1(id);
    has_attack = true;
}
next_attack();

has_attack = true;

