if back {
    image_xscale = lerp(image_xscale, 0, .3);

    if image_xscale < .1 {
        instance_destroy();
    }

    exit;
}
if exiting {
    target_x -= (24 + 2.4) * self.dir;
} else {
    target_x += 4 * self.dir;
}

var size = 0;
var max_dist = room_width;
var dir = point_direction(x, y, target_x, target_y);
image_angle = dir;
var sine_cache = dsin(dir);
var cosine_cache = dcos(dir);

repeat max_dist {
    size += 1;
    image_xscale = size / sprite_get_width(spr_demon_head_laser);
    if place_meeting(x, y, obj_solid) {
        break;
    }
}

var margin = 69*2.4+13;
if target_x < -margin || target_x > room_width+margin {
    if exiting {
        back = true;
    }
    exiting = true;
}
