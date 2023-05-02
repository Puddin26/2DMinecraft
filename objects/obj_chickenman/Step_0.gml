/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_chicken) and chicken_checker = false {
	instance_create_layer(x, y, "Inventory", obj_chicken_checker);
	chicken_checker = true;
}

if place_meeting(x, y, obj_player) and keyboard_check_pressed(vk_space) and obj_flour.num_flour >= 5 {
	instance_create_layer(x, y, "Ground", obj_chicken);
	obj_flour.num_flour -= 5;
}