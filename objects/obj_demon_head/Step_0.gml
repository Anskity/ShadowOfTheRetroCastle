if has_attack {
    var res = attack.update();
    if res {
        delete attack;
        has_attack = false;
    }
} else {
    image_angle = lerp_angle(image_angle, 0, .3);
    if angle_difference(image_angle, 0) == 0 {
        next_attack();
    }
}

if life <= 0 {
    global.defeated_demon = true;
    room_transition(rm_selection);
}

if instance_exists(obj_demon_minion){
	image_index = 3;
	y += sin(current_time*.005) * 0.5;
} else {
	image_index = 0;
	y += sin(current_time*.005) * 1;
}

flash_manager.update();
