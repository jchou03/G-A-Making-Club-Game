///@arg y_momentum

var _y_momentum = argument0;

if (
!bottom_collision_line(1/2,_y_momentum) && 
!bottom_collision_line(1,_y_momentum) &&
!bottom_collision_line(1/3,_y_momentum) && 
!bottom_collision_line(3/4,_y_momentum)){
	return true;
}else{
	return false;
}