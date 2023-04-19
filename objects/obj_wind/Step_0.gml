/// @description Insert description here
// You can write your code in this editor
depth = -6000000

windstrength = min(3,(max(obj_player.x,1000)-1000)/200)

if (obj_player.x < 1000) { image_index = 0 }
else if (obj_player.x < 1150) { image_index = 1 } 
else if (obj_player.x < 1300) { image_index = 2 }
else { image_index = 3 }

y+=2
movement = 0

if(windstrength < 1) { movement = 2 + 13*windstrength + ((windstrength*0.3)+0.2)*distance}
else if(windstrength < 2) { movement = (distance*(0.5 * windstrength) + 15)*windstrength}
else { movement = (distance*(windstrength-1) + 20)*windstrength -10}

move_towards_point(x-1, y, movement)

flux_x = room_width*2
flux_y = room_height*movement
flux_ratio = flux_x/(flux_x+flux_y) 

if (x <= -200) {
	if(random(1) < flux_ratio) {
		x = irandom_range(0, room_width)
		y = 0
	}
	else {
		x = room_width; 
		y = irandom_range(0, room_height)
	}
}

if (obj_player.x > 1000)
{
	with (obj_player)
	{
		move_towards_point(x-1, y, min(3,(max(obj_player.x,1000)-1000)/150));

	}
}

if (obj_player.x <= 540)
{
	with (obj_player)
	{
		room_goto(Home); obj_player.x = 1250; obj_player.y = 1250; speed = 0;

	}
}