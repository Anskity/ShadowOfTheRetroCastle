var flash = flash_manager.get();

if flash {
    shader_set(shd_color_overlay);
}

draw_self();

shader_reset();

if instance_exists(obj_demon_minion){
	draw_set_color(#ffd100);
	draw_set_alpha(.5);
	draw_circle(x, y, 95, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);
}

