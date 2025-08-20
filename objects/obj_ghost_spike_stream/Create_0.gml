assert_exists(self[$ "dir"]);
dir = self[$ "dir"] ?? 0;

move_timer = new Timer(.2, function() {
	var pos_y = room_height-1;
	while position_meeting(x+8, pos_y, obj_solid) {
		pos_y -= 1;
	}
	instance_create_depth(x+8, pos_y + 8, depth, obj_ghost_spike);
	do {
		x += dir * 16;
	} until x != clamp(x, 0, room_width) || position_meeting(x+8, room_height-8, obj_solid);
});
