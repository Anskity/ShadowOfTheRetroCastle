function game_setup() {
    instance_create_depth(0,0,0, obj_daemon_manager);
	room_goto(rm_demon_head);
}
