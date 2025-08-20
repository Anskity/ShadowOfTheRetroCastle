character_controller.update();
staff_controller.update();
invencible_timer.tick();

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_width);

if place_meeting(x, y, obj_demon_head_laser) {
    instance_destroy();
}
