if y < 0 && has_collided {
    instance_destroy();
}

down_timer.tick();

if has_collided {
    timer.tick();
} else {
	image_alpha = lerp(image_alpha, 1, .1);
	if going_down {
		vsp += 1.2;
	} else {
		y = lerp(y, ystart - 15, 0.05);	
	}
}

if going_up {
	image_alpha = lerp(image_alpha, 0, .02);
	image_angle += sin(current_time*.005) * .5;
    vsp -= .04;
} else {
	attack_wizard();	
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
