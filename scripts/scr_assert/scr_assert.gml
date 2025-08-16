function assert_exists(value) {
    if is_undefined(value) {
        throw "ASSERTED VALUE IS UNDEFINED";
    }
}

function assert(value) {
    if !value {
        throw "ASSERTION FAILED!";
    }
}

function assert_eq(a, b) {
    if a != b {
        throw $"ASSERTION FAILED: {a} != {b}";
    }
}

function assert_ne(a, b) {
    if a == b {
        throw $"ASSERTION FAILED: {a} == {b}";
    }
}

function todo() {
    show_error("Error: Not yet implemented", true);
}

function log_step(txt) {
    if false {
        show_debug_message(txt);
    }
}
