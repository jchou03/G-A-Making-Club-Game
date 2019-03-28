/// @description Talk state

if(textbox_ == noone){
	textbox_ = instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),"Text",oTextBox);
	textbox_.text_[0] = "hi";
}