/// @description Attack State

sprite_index = spr_mummy_attack;
image_speed = 1;

var _target_array = [obj_player];

create_hitbox(spr_mummy_hitbox,x,y,0,0,_target_array,1,1);