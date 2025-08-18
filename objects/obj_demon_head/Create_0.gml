life = 500;

take_damage = function(damage) {
    life -= damage;
}

attack = {};
delete attack;
next_attack = function() {
	var choose_next_attack = choose(0, 1);
	
	switch choose_next_attack {
		case 0:
			attack = new DemonHeadAttack1(id); 
		break;
		
		case 1:
			attack = new DemonHeadAttack2(id);
		break;
	}
	
    has_attack = true;
}
next_attack();

has_attack = true;

