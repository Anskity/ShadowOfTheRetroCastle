transition = approach(transition, !in, 1/GAME_SPEED/1);

if transition == 1 && !in {
    frame += 1;
    in = true;
}

if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space) {
    if frame == sprite_get_number(spr_cutscene)-1 {
        room_transition(rm_selection);
    } else {
        in = false;
    }
}
