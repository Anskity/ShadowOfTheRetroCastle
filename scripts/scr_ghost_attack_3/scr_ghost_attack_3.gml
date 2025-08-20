function GhostAttack3(inst) constructor {
    update = function() {
        __inst.default_hand_shake();

        return !instance_exists(__stream);
    }

    __inst = inst;

    var dir = choose(1, -1);
    var pos_x = dir == 1 ? 0 : room_width;
    __stream = instance_create_depth(pos_x, 0, __inst.depth-1, obj_ghost_spike_stream, {dir});
}
