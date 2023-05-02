/// @description Insert description here
// You can write your code in this editor

if image_index = 3 { 
	image_speed = 0; 
	if keyboard_check_pressed(vk_space) and place_meeting(x, y, obj_player) {
		obj_apple.num_apples += 3;
		image_index = 0;
		image_speed = im_speed;
		}
	}

