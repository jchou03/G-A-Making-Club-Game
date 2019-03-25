/// @description Insert description here
// You can write your code in this editor

distance_to_player_ = point_distance(x,y,target_.x,target_.y);
x_direction_to_player_ = sign(target_.x - x);
attack_wait_ = global.one_second * random_range(2,4);
idle_wait_ = global.one_second * random(3);

event_user(state_);