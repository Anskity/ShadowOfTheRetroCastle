attack_timer = new Timer(4, function() {
	if !instance_exists(obj_wizard) {
		return;
	}
	attacking = true;
	dir = point_direction(x, y, obj_wizard.x, obj_wizard.y);
});

dir = 0;
idx = instance_number(obj_ghost_xuriken);
attacking = false;

get_orbit_pos = function() {
	var dir = (current_time*.2) % 360 + 360*(idx/instance_number(obj_ghost_xuriken));
	var dist = 96;
	var pos_x = obj_ghost.x + lengthdir_x(dist, dir);
	var pos_y = obj_ghost.y + lengthdir_y(dist, dir);
	
	return [pos_x, pos_y];
}
