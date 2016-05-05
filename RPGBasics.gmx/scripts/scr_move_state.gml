///scr_move_state
scr_get_input();


if (dash_key) {
    state= scr_dash_state;
    alarm[0] = room_speed/4;
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
if (vspd >0) {
    sprite_index = spr_player_down;
} else if (vspd < 0) {
    sprite_index = spr_player_up;
}

// Horizontal
if (hspd >0) {
    sprite_index = spr_player_right;
} else if (hspd < 0) {
    sprite_index = spr_player_left;
}


