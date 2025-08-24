var flash = flash_manager.get();

if flash {
    shader_set(shd_color_overlay);
}

draw_self();

shader_reset();

