var did_hit = attack_wizard();
if did_hit {
    instance_destroy();
}

if attacking {
	var spd = 4;
	x += lengthdir_x(spd, dir);
	y += lengthdir_y(spd, dir);
	image_angle += 12;
	exit;
}

var orbit_pos = get_orbit_pos();
var orbit_x = orbit_pos[0];
var orbit_y = orbit_pos[1];

x = lerp(x, orbit_x, .3);
y = lerp(y, orbit_y, .3);
image_angle += 12;

attack_timer.tick();

