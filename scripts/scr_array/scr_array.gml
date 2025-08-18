function array_rand(arr) {
    var len = array_length(arr);
    if len == 0 {
        throw "array_random_element was given an empty array";
    }

    return arr[irandom(len-1)];
}
