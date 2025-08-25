character_controller.update();
staff_controller.update();
invencible_timer.tick();

health_bar.update(life);

x = clamp(x, 0, room_width);
y = clamp(y, 0, room_width);

if life <= 0 {
	//show_message("Morreu! :(");
	//room_restart();
}

if y >= room_height {
	take_damage();
	y = ystart;
	x = xstart;
}

if invencible {
	image_alpha = sin(current_time*.05);	
} else {
	image_alpha = lerp(image_alpha, 1, .1);
}

if !surface_exists(hud_surf) {
    GET_GUI_SIZE;
    hud_surf = surface_create(gui_w, gui_h);
}
surface_set_target(hud_surf);

draw_clear_alpha(0,0);
health_bar.render();
surface_reset_target();

flash_manager.update();

if life <= 0 {
    room_transition(room);
}


