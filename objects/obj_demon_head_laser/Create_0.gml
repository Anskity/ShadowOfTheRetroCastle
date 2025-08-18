dir = choose(1, -1);
margin = 69*2.4+13;
target_x = dir == -1 ? room_width + margin : -margin;
target_y = room_height;

started = false;
back = false;
exiting = false;
owner = noone;
image_angle = 270;
image_xscale = 0;
