attack_wizard();

var dir = point_direction(x, y, target_x, target_y);
if !started {
    image_angle = lerp_angle(image_angle, dir, .1);
    if angle_difference(image_angle, dir) < 1 {
        started = true;
    }
    owner.image_angle = image_angle + 90;
    exit;
}
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

image_angle = dir;

x = owner.x + lengthdir_x(44, image_angle);
y = owner.y + lengthdir_y(44, image_angle);
owner.image_angle = image_angle + 90;

repeat max_dist {
    size += 1;
    image_xscale = size / sprite_get_width(spr_demon_head_laser);
    if place_meeting(x, y, obj_solid) {
        break;
    }
}

if target_x < -margin || target_x > room_width+margin {
    if exiting {
        back = true;
    }
    exiting = true;
}

