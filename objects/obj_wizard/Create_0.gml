self.place_meeting = function(pos_x, pos_y, obj) {
	return place_meeting(pos_x, pos_y, obj);	
}
self.apply_force = function(hsp, vsp) {
    character_controller.apply_force(hsp, vsp);
}

character_controller = new CharacterController(id);
staff_controller = new StaffController(id);

invencible = false;
invencible_timer = new Timer(1, function() {
    invencible = false;
});

// oi
// Hola

life = 5;
take_damage = function() {
    if invencible = false {
        life -= 1;
		invencible = true;
    }
}

get_face = function() {
    return character_controller.get_face();
}

health_bar = new Healthbar({life});
