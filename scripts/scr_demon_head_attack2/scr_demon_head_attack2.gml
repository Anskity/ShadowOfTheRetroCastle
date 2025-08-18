function DemonHeadAttack2(inst) constructor {
		update = function() {
		__timer_attack.tick();
		__time++;
        return __time > GAME_SPEED * 2;
    }
	
	__attack = function() {
		var bullet_amt = 4;
		var total_area = bullet_amt * 7.5;
	
		for (var i = 0; i < bullet_amt; ++i){
			var dir = lerp(-total_area - 90, total_area - 90, i/(bullet_amt-1));
			var bullet = instance_create_depth(__inst.x, __inst.y + 42, 0, obj_demon_head_bullet);
			bullet.image_angle = dir;
			bullet.direction = dir;
			bullet.speed = 2.5;
		
			bullet.owner = __inst;
			bullet.depth = __inst.depth-1;
		}
	}
    
    assert_exists(inst);

	__time = 0;
    __inst = inst;

	__attack();
	
	__timer_attack = new Timer(.5, function() {
		__attack();
	});
}
