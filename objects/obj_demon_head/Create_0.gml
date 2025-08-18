life = 500;

take_damage = function(damage) {
    life -= damage;
}

current_attack = -1;
attack = {};
delete attack;

next_attack = function() {
    var possibilities = [];
    if current_attack != 1 {
        array_push(possibilities, 1);
    }
    if current_attack != 2 {
        array_push(possibilities, 2);
    }
    if current_attack != 3 && life < 500 {
        array_push(possibilities, 3);
    }
    current_attack = array_rand(possibilities);
	
	switch current_attack {
		case 1:
			attack = new DemonHeadAttack1(id);
		break;
		case 2:
			attack = new DemonHeadAttack2(id);
		break;
		case 3:
			attack = new DemonHeadAttack3(id);
		break;
	}
	
    has_attack = true;
}
next_attack();

has_attack = true;

