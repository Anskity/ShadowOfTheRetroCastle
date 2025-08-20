var char = instance_place(x, y, obj_wizard);

if instance_exists(char) {
	if !just_touched {
		target.just_touched = true;
		char.x = target.x;
		char.y = target.y;
	}
} else {
	just_touched = false;
}