for (var i = 0; i < array_length(daemons); ++i) {
	var daemon = daemons[i];
	daemon.update();
}

if keyboard_check_pressed(ord("1")) {
    room_goto(rm_demon_head);
}
if keyboard_check_pressed(ord("2")) {
    room_goto(rm_ghost);
}
