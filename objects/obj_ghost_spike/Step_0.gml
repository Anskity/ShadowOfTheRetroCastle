timer.tick();
transition = approach(transition, active, 1/GAME_SPEED/.2);
image_yscale = transition;
y = lerp(y, ystart - 7, 0.1);
image_alpha = lerp(image_alpha, 1, 0.1);

attack_wizard();

if transition == 0 && !active {
	instance_destroy();
}
