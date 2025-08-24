var flash = flash_manager.get();

if flash {
    shader_set(shd_color_overlay);
}

draw_self();
shader_reset();

draw_sprite_ext(spr_ghost_hand, 0, right_hand_x, right_hand_y, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(spr_ghost_hand, 0, left_hand_x, left_hand_y, 1, 1, 0, c_white, image_alpha);
