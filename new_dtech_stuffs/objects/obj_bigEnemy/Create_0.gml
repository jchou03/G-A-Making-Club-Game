event_inherited();

attack_wait_ = global.one_second * random_range(2,4);
idle_wait_ = global.one_second * ceil(random(3));
walk_duration_ = global.one_second * random_range(4,15);
alarm[0] = attack_wait_;
alarm[1] = idle_wait_;
alarm[2] = walk_duration_;
image_xscale = -1;
image_speed = 0.5;

target_ = obj_player;

walk_into_wall_duration_ = 0;

distance_to_player_ = point_distance(x,y,target_.x,target_.y);
x_direction_to_player_ = sign(target_.x - x);

direction_facing_ = -1;
walk_speed_ = 2;
state_ = bigEnemy.idle;
health_ = 2;

enum bigEnemy{
	idle,
	float,
	attack
};