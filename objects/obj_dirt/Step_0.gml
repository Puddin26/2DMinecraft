/// @description Insert description here
// You can write your code in this editor

if image_index = 1 {
	you_put_seeds_in_in_time = true;
}

if safe = true {
	
	sprite_index = spr_wheat;
	image_index = 0;
	safe = false;
	alarm[1] = (choose(0, 0, 10)+10)*room_speed;
	growth_level = 0
	ungrown_wheat = true
	image_speed = 0
}