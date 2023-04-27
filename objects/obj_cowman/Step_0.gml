/// @description Insert description here
// You can write your code in this editor

if place_meeting(x, y, obj_player) and keyboard_check_pressed(vk_space) and obj_flour.num_flour >= 3 {
	instance_create_layer(x, y, "Ground", obj_cow);
	obj_flour.num_flour -= 3;
}