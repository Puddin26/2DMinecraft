/// @description Insert description here
// You can write your code in this editor

depth = -y;

audio_sound_gain(snd_sharp, min(1,1/(sqr((obj_player.x-x)/300)+sqr((obj_player.y-y)/400))), 0);

if place_meeting(x, y+10, obj_water)
	{vspeed*=-1}

	if place_meeting(x+10, y, obj_water)
	{hspeed*=-1}


if (collision_circle(x, y, 350, obj_player, true, true) and not global.is_hiding)
{
	move_towards_point(obj_player.x, obj_player.y, 4)
	draw_it = true;
	time = 0;
	random_direction = irandom(100);
}
else if (collision_circle(x, y, 350, obj_player, true, true) and global.is_hiding) {
	time += 1;
	if (time < 60 and time > 10)
		{ vspeed = 0;
		 hspeed = 0; }
	if time > 60 {
		playerdirection = point_direction(x,y,obj_player.x,obj_player.y)
		direction = (playerdirection + (100 + random_direction))
		speed = 4
		}
	draw_it = false;
}




with(obj_player) {
	global.is_hiding = false
	with(obj_hide) 
	{
		if ((obj_player.depth >= depth) 
		and (place_meeting(x, y, obj_player)))
		{ global.is_hiding = true }
	}
	
	if ((place_meeting(x, y, obj_chef)) and not global.is_hiding)
	{
		global.dead = true;
		audio_play_sound(snd_oof, 2, false);
		audio_play_sound(snd_respawn, 2, false);
		instance_destroy(obj_chef);
		instance_create_layer(x, y, "Player", obj_hide)
		instance_create_layer(x, y, "Player", obj_transition)
	}
}
