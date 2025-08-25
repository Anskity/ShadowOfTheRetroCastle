bullet_time.tick();

var base_angle = 270 + 130*sin(current_time*.001);
var minion_amt = instance_number(obj_demon_minion);
var target_angle = base_angle;// + 360/minion_amt*minion_idx;
image_angle = target_angle+90;

var dist = 140;
var target_x = owner.x + lengthdir_x(dist, target_angle);
var target_y = owner.y + lengthdir_y(dist, target_angle);

x = lerp(x, target_x, .3);
y = lerp(y, target_y, .3);

var wizard = instance_place(x, y, obj_wizard);
if instance_exists(wizard) {
    wizard.apply_force(x-xprevious, y-yprevious);
}

if life <= 0 || owner.life >= 500 {
    instance_destroy();
}
flash_manager.update();