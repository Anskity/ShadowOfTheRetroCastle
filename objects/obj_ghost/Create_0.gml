life = 400;

invencible = function(){
	if instance_exists(obj_ghost_xuriken) {
		if obj_ghost_xuriken.attacking = false {
			image_alpha = lerp(image_alpha, .5, .05);
			image_angle += cos(current_time*.005);
			return true;
		} else {
			image_alpha = lerp(image_alpha, 1, .1);
			image_angle = lerp(image_angle, 1, .1);
			return false;	
		} 
	}
}

take_damage = function(damage) {
	if invencible(){
		return;	
	}
	life -= damage;

    flash_manager.notify();
}


right_hand_x = x;
right_hand_y = y;

left_hand_x = x;
left_hand_y = y;

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
    if current_attack != 3 {
        array_push(possibilities, 3);
    }
    current_attack = array_rand(possibilities);
	
	switch current_attack {
		case 1:
			attack = new GhostAttack1(id);
        break;
		case 2:
			attack = new GhostAttack2(id);
		break;
		case 3:
			attack = new GhostAttack3(id);
		break;
	}
	
    has_attack = true;
}
next_attack();

has_attack = true;

default_hand_shake = function() {
    var margin = GHOST_HAND_MARGIN;
    var hand_y = y + 10;
    var right_x = x + margin;
    var right_y = hand_y + sin(current_time*.01) * 7;

    right_hand_x = lerp(right_hand_x, right_x, .3);
    right_hand_y = lerp(right_hand_y, right_y, .3);

    var left_x = x - margin;
    var left_y = hand_y + cos(current_time*.008) * 7;

    left_hand_x = lerp(left_hand_x, left_x, .3);
    left_hand_y = lerp(left_hand_y, left_y, .3);
}

flash_manager = new FlashManager();
