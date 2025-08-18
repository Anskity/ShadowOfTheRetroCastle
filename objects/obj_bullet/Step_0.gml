var spd = 10;
x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

var enemy = instance_place(x, y, EnemyInsts);
if instance_exists(enemy) {
    enemy.take_damage(damage);
    instance_destroy();
    exit;
}

var margin = 16;
if !point_in_rectangle(x, y, -margin, -margin, room_width+margin, room_height+margin) {
    instance_destroy();
}
