/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_dirt) {
show_debug_message(string(instance_number(obj_dirt))); }


if place_meeting(x, y, obj_seeds) and keyboard_check_pressed(vk_space) {
	obj_inventory.items = Items.SEEDS;
}
else if place_meeting(x, y, obj_hoe) and keyboard_check_pressed(vk_space) {
	obj_inventory.items = Items.HOE;
}


depth = -y;

//camera_set_view_pos(view_camera[0],
//x-(camera_get_view_height(view_camera[0])/2), 
//y-(camera_get_view_height(view_camera[0])/2))

movement_speed = 3;
//if(keyboard_check(vk_right) or keyboard_check(vk_left) or keyboard_check(vk_up) or keyboard_check(vk_down)){
//	sprite_index = sp_manwalking}
//else {
//	sprite_index = sp_man
//	}

if keyboard_check(ord("D")) { spd[0]=1; image_xscale *= -1; }
else if keyboard_check(ord("A")) { spd[0]=-1; image_xscale *= 1;}
else {spd[0]=0}


if keyboard_check(ord("S")) {spd[1]= 1}
else if keyboard_check(ord("W")) {spd[1]= -1}
else {spd[1]=0}

if(spd[0] != 0 or spd[1] != 0){
	var mag = sqrt(spd[0]*spd[0]+spd[1]*spd[1])
	spd[0] = spd[0]/mag
	spd[1] = spd[1]/mag
}

spd[0]*=movement_speed
spd[1]*=movement_speed

x+=spd[0]
y+=spd[1]

if !place_meeting(x, y, obj_wall) {
	x-=spd[0]
	spd[0] = 0
}

//y+=spd[1]

if !place_meeting(x, y, obj_wall) {
	y-=spd[1]
	spd[1] = 0
}

