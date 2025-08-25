var prev_hover = hover;
hover = position_meeting(mouse_x, mouse_y, id);

if hover && !prev_hover && can() {
    play_sfx(sfx_selection);
}

