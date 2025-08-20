timer.tick();
transition = approach(transition, active, 1/GAME_SPEED/.5);
image_yscale = transition;

attack_wizard();

if transition == 0 && !active {
	instance_destroy();
}
