/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_space) and place_meeting(x, y, obj_player) and obj_wheat.num_wheat >= 3 {
	obj_wheat.num_wheat -= 3;
	obj_flour.num_flour += 1;
}
