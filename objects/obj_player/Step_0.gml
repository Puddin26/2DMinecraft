/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_dirt) {
show_debug_message(string(instance_number(obj_dirt))); }


//inventory rotation
if obj_inventory.items != Items.SEEDS {
	if place_meeting(x, y, obj_seeds) and keyboard_check_pressed(vk_space){ obj_inventory.items = Items.SEEDS;}
}
else if obj_inventory.items != Items.HOE {
	if place_meeting(x, y, obj_hoe) and keyboard_check_pressed(vk_space) { obj_inventory.items = Items.HOE;}
}
else { obj_inventory.items = Items.NONE }


depth = -y;



movement_speed = 3;

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
if !place_meeting(x, y, obj_wall) {
	y-=spd[1]
	spd[1] = 0
}

