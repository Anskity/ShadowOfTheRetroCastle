owner = noone;
minion_idx = instance_number(obj_demon_minion);

life = 50;

take_damage = function(damage) {
    life -= damage;
    flash_manager.notify();
}

flash_manager = new FlashManager();

bullet_time = new Timer(.3, function(){
	var bullet = instance_create_depth(x, y, depth, obj_demon_head_bullet);
	bullet.direction = image_angle-90;
	bullet.speed = 2;
});
