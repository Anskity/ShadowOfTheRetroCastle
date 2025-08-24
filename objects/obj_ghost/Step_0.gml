invencible();

x += sin(current_time*.005);
y += cos(current_time*.01);

if has_attack {
    var res = attack.update();
    if res {
        delete attack;
        has_attack = false;
    }
} else {
    next_attack();
}

flash_manager.update();

if life <= 0 {
	show_message("Derrotou o Fantasmagórico!");
	game_restart();
}

