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
