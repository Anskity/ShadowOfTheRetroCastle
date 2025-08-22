vsp = 0;
has_collided = false;
going_up = false;
going_down = false;
image_alpha = 0;

down_timer = new Timer(1, function() {
	going_down = true;
});

timer = new Timer(1, function() {
    going_up = true;
});

