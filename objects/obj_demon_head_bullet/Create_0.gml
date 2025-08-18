split_timer = GAME_SPEED * 2;
split_delay = split_timer;

function self_split(){
	split_delay--;
	
	if split_delay <= 0 {
		instance_destroy();
		repeat 3 {
			var dir = random(359)
			var split = instance_create_depth(x, y, depth, obj_demon_head_bullet_mini);
			split.direction = dir;
			split.speed = 2.5;
		}
	}
}