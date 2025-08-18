var res = attack.update();
if res {
    delete attack;
    next_attack();
}
