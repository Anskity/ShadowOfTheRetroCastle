if y < 0 && has_collided {
    instance_destroy();
}

down_timer.tick();

if has_collided {
    timer.tick();

    if going_up {
		image_alpha = lerp(image_alpha, 0, .02);
		image_angle += sin(current_time*.005) * .5;
        vsp -= .04;
    }
} else {
	image_alpha = lerp(image_alpha, 1, .1);
	if going_down {
		attack_wizard();
		vsp += 1.2;
	} else {
		y = lerp(y, ystart - 12, 0.05);	
	}
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
