///@arg ymomentum
var _y_momentum = argument0;

//Check that you are passing through nonsolid platform going up
if(place_meeting(x,y+_y_momentum,obj_nonsolid_platform) && sign(_y_momentum) == -1){
}
//If you are colliding with it but the bottom of the object isn't going to touch 
else if(place_meeting(x,y+_y_momentum,obj_nonsolid_platform) && !(position_meeting(x,bbox_bottom+_y_momentum/2,obj_nonsolid_platform)) && !(position_meeting(x,bbox_bottom+_y_momentum,obj_nonsolid_platform))){
	 
}
//Normal y collisions
else if(place_meeting(x,y+_y_momentum,obj_wall)){
	while(!place_meeting(x,y+sign(_y_momentum),obj_wall)) y += sign(y_momentum_);
	y_momentum_ = 0;
}