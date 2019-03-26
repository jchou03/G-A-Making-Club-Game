/// @description Attack State

x_momentum_ = 0;

sprite_index = spr_bigEnemy_attack;
image_speed = 0.5;

var _target_array = [obj_player];

create_hitbox(spr_bigEnemy_hitbox,x,y,0,0,_target_array,1,1);

if image_index == 4{
	state_ = bigEnemy.idle;
	alarm[0] = attack_wait_;
}

apply_momentum();