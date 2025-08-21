character_controller.update();
staff_controller.update();
invencible_timer.tick();

health_bar.update(life);

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_width);
