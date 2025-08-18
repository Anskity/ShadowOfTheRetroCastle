/// Took from https://github.com/thelucre/gamemaker-scripts/blob/master/Approach.gml
function approach(argument0, argument1, argument2) {
    assert_exists(argument0);
    assert_exists(argument1);
    assert_exists(argument2);
    if (argument0 < argument1)
        return min(argument0 + argument2, argument1); 
    else
        return max(argument0 - argument2, argument1);
}
