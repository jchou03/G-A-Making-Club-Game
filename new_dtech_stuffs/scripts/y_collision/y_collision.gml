///@arg ymomentum
var _y_momentum = argument0;

//Check that you are passing through nonsolid platform going up
if(place_meeting(x,y+_y_momentum,obj_nonsolid_platform) && sign(_y_momentum) == -1){
}
//If you are colliding with a nonsolid platform but the bottom of the object won't going to touch 
else if(place_meeting(x,y+_y_momentum,obj_nonsolid_platform) && bottom_y_collision(_y_momentum)){
	if (bbox_bottom > other.bbox_top){
		var _distance_down = bbox_bottom - other.bbox_top;
		y_momentum_ = -_distance_down;
	}
}
//Normal y collisions
else if(place_meeting(x,y+_y_momentum,obj_wall)){
	while(!place_meeting(x,y+sign(_y_momentum),obj_wall)) y += sign(y_momentum_);
	y_momentum_ = 0;
}