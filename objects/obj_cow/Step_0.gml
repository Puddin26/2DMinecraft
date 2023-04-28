/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 15, room_width-15)
y = clamp(y, 15, room_height-15)
depth = -y;

randomize()

if (state = states.free){
// moving every few seconds
	if timer != room_speed * 3 {
	timer ++
	moving = false
	}
	else {
		if alarm[0] = -1{
			alarm[0] = room_speed*3
		}
		if (!moving){
		dir = random(359)
		}
		x += lengthdir_x(spd, dir)
		y += lengthdir_y(spd, dir)
		moving = true
	}
// allow player to get milk
	if (distance_to_object(obj_player) < 3){
		if keyboard_check_released(vk_space){
			omilk.num_milk += 1
		}
	}
}

//which way cow is facing
if sign(xprevious-x) > 0 { image_xscale = 1; }
else if sign(xprevious-x) < 0 { image_xscale = -1; }

//code for the cow as an auto-tiller
x_origin = x-x%40;
y_origin = y-y%40;
if !position_meeting(x, y, obj_dirt) {
	instance_create_layer(x_origin, y_origin, "Ground", obj_dirt);
}


