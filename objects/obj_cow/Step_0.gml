/// @description Insert description here
// You can write your code in this editor

x = clamp(x, 0, room_width-3)
y = clamp(y, 0, room_height-3)
depth = -y;

randomize()

if (state = states.free){
// moving every few seconds
	if timer != room_speed * 3{
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

