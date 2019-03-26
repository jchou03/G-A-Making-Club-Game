/// @description Talk state

//if there is not a textbox already existing then create one
if textbox_ == noone{
	instance_create_layer(x,y,"Instances",obj_mummy);
	textbox_ = instance_create_layer(x,y,"Text",oTextBox);
	textbox_.text_[0] = text1_[0];
	textbox_.text_[1] = text1_[1];
}

//exit the text state
if !instance_exists(textbox_){
	state_ = villager.idle_side;
	textbox_ = noone;
	event_user(state_);
}