/// @description Insert description here
// You can write your code in this editor

if ungrown_wheat {
	growth_level += 1
	image_index = growth_level

	if image_index < IMAGE_MAX {
		alarm[1] = (choose(0, 0, 10)+10)*room_speed;
	}
	else {
		ungrown_wheat = false
	}
}
	