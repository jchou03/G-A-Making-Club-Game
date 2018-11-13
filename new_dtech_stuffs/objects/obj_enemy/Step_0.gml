/// @description Insert description here
// You can write your code in this editor

y_momentum_ += global.gravity_;
//Off screen movement
if(provoked_ == 0){
	var _direction = point_direction(x,y,obj_player.x,obj_player.y);
	direction_facing_ = round(_direction/180);
	
	if(direction_facing_ == 1){
		x_momentum_ = -walk_speed_;
	}else if(direction_facing_ == 0 || direction_facing_ == 2){
		x_momentum_ = walk_speed_;
	}
	
}

//Collisions
x_collision(x_momentum_);
y_collision(y_momentum_);

x += x_momentum_;
y += y_momentum_;