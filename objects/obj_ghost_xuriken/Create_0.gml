image_xscale = 0;
image_yscale = 0;

attack_timer = new Timer(3 + instance_number(obj_ghost_xuriken)*.05, function() {
	attacking = true;
	dir = point_direction(x, y, obj_wizard.x, obj_wizard.y);
});

dir = 0;
idx = instance_number(obj_ghost_xuriken);
attacking = false;
spin_spd = 0;

get_orbit_pos = function() {
	spin_spd = lerp(spin_spd, 1, 0.05)
	
	var dir = (current_time*.2) % 360 + 360*(idx/instance_number(obj_ghost_xuriken));
	var dist = 128;
	var pos_x = obj_ghost.x + (lengthdir_x(dist, dir) * spin_spd);
	var pos_y = obj_ghost.y + (lengthdir_y(dist, dir) * spin_spd);
	
	return [pos_x, pos_y];
}
