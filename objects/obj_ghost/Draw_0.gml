draw_self();
draw_text(x, y, life);

draw_sprite_ext(spr_ghost_hand, 0, right_hand_x, right_hand_y, 1, 1, 0, c_white, image_alpha);
draw_sprite_ext(spr_ghost_hand, 0, left_hand_x, left_hand_y, 1, 1, 0, c_white, image_alpha);
