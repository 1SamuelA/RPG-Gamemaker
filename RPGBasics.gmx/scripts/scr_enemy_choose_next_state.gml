///scr_enemy_choose_next_state
if (alarm[0] <=0){
    state = choose(scr_enemy_idle_state, scr_enemy_wonder_state);
    alarm[0] = room_speed*irandom_range(2,5);
    targetx = random(room_width);
    targety = random(room_height);
}
