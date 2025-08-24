function FlashManager() constructor {
    update = function() {
        if __flash {
            __timer.tick();
        }
    }

    get = function() {
        return __flash;
    }

    notify = function() {
        __flash = true;
    }

    __flash = false;
    __timer = new Timer(.1, function() {
        __flash = false;
    });
}
