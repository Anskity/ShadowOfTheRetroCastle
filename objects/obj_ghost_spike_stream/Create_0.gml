assert_exists(self[$ "dir"]);
dir = self[$ "dir"] ?? 0;

inst_create_time = .3;
inst_create_time_frac = .015;

move_timer = new Timer(inst_create_time, function() {
	move_timer.set_max(inst_create_time - inst_create_time_frac);
	inst_create_time -= inst_create_time_frac;
	
	var pos_y = room_height-1;
	while position_meeting(x+8, pos_y, obj_solid) {
		pos_y -= 1;
	}
	instance_create_depth(x+8, pos_y + 8, depth, obj_ghost_spike);
	do {
		x += dir * 16;
	} until x != clamp(x, 0, room_width) || position_meeting(x+8, room_height-8, obj_solid);
});
