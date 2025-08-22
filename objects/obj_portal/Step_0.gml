var char = instance_place(x, y, obj_wizard);

if instance_exists(char) {
	if !just_touched {
		target.just_touched = true;
		char.x = target.x;
		char.y = target.y;

        char.character_controller.reset();
        var face = char.get_face();
        char.apply_force(face*8, -3);
	}
} else {
	just_touched = false;
}

image_angle += 4;
