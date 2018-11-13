///@arg ymomentum
var _y_momentum = argument0;

if(place_meeting(x,y+_y_momentum,obj_wall)){
	while(!place_meeting(x,y+sign(_y_momentum),obj_wall)) y += sign(y_momentum_);
	y_momentum_ = 0;
}