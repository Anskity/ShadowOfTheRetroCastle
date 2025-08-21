attack_wizard();
if has_collided {
    timer.tick();

    if going_up {
		image_angle += sin(current_time*.005) * .5;
        vsp -= .04;
    }
} else {
    vsp += 1;
}

if place_meeting(x, y+vsp, obj_solid) {
    y = vsp > 0 ? floor(y) : ceil(y) - 12;
    has_collided = true;

    while !place_meeting(x, y+sign(vsp), obj_solid) {
        y += sign(vsp);
    }

    vsp = 0;
}

y += vsp;

if y < -64 && has_collided {
    instance_destroy();
}
