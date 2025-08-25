var yfpkyfbkzfbkvofryuk = true;
if image_index == 1 {
	if !global.defeated_demon {
		shader_set(shd_gray);
        yfpkyfbkzfbkvofryuk = false;
	}
}
draw_self();
shader_reset();

if hover && yfpkyfbkzfbkvofryuk {
	var pos_y = y - 32 + sin(current_time*.05)*4;
	draw_sprite(spr_selection_arrow, 0, x, pos_y);
}
