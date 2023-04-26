/// @description Insert description here
// You can write your code in this editor

if image_index = 3 { 
	image_speed = 0;
	with obj_player {
		if keyboard_check_pressed(vk_space) and place_meeting(x, y, obj_tree) {
		obj_apple.num_apples += 1;
		}
	}
}

