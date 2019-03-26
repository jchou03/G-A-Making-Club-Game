/// @description 

walk_duration_ = 0;
walk_speed_ = 2;
x_momentum_ = 0;
y_momentum_ = 0;
direction_ = 0;

textbox_ = noone;

state_ = villager.talk;

alarm[0] = random_range(4,10) * game_get_speed(gamespeed_fps);

//Set up the texts
text1_[0] = "hi";
text1_[1] = "alright then bye loser I hope I never see you again now these are just random words for testing to check if the text will bend at the end or continue off the end of the screen like a random nerd"

enum villager{
	idle_front,
	idle_side,
	walk,
	talk
}