// assert_exists(self[$ "target_x"]);
// assert_exists(self[$ "target_y"]);
// target_x = self[$ "target_x"] ?? 0;
// target_y = self[$ "target_y"] ?? 0;
dir = choose(1, -1);
target_x = dir == -1 ? room_width : 0;
target_y = room_height;

back = false;
exiting = false;
