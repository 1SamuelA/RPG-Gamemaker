///scr_move_state
scr_get_input();


if (dash_key && obj_player_stats.stamina >= 5) {
    obj_player_stats.stamina -= 5;
    state= scr_dash_state;
    alarm[0] = room_speed/4;
    obj_player_stats.alarm[0] = room_speed;
}

if (attack_key) {
    image_index = 0;
    state= scr_attack_state;
}

// Get Direction
dir = point_direction(0,0,xaxis,yaxis);

//get lenght
if (xaxis == 0 and yaxis == 0){
    len = 0;
} else {
    scr_get_face();
    len = spd;
}

// get vspd & hspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;
phy_position_y += vspd;

// spr control
image_speed = 0.2;
if (len == 0) image_index = 0;

// vertical

switch(face){
    case RIGHT:
        sprite_index = spr_player_right;
        break;
    case UP:
        sprite_index = spr_player_up;
        break;
    case LEFT:
        sprite_index = spr_player_left;
        break;
    case DOWN:
        sprite_index = spr_player_down;
        break;
}

