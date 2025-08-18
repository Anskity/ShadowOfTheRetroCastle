self.place_meeting = function(pos_x, pos_y, obj) {
	return place_meeting(pos_x, pos_y, obj);	
}
self.apply_force = function(hsp, vsp) {
    character_controller.apply_force(hsp, vsp);
}

character_controller = new CharacterController(id);
staff_controller = new StaffController(id);

// oi
// Hola
