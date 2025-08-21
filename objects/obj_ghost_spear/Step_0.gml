attack_wizard();
if has_collided {
    timer.tick();

    if going_up {
        vsp -= .03;
    }
} else {
    vsp += .07;
}

if place_meeting(x, y+vsp, obj_solid) {
    y = vsp > 0 ? floor(y) : ceil(y);
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
