/// @description Insert description here
// You can write your code in this editor



if in_range {
	if items = Items.HOE and !position_meeting(mouse_x, mouse_y, obj_dirt) {
		draw = true;
	}
	else if items = Items.SEEDS and position_meeting(mouse_x, mouse_y, obj_dirt) and instance_nearest(mouse_x, mouse_y, obj_dirt).image_index = 0 {
		draw = true;
	}
	else { draw = false; }
}

if draw and in_range {
	draw_set_color(c_white);
	draw_rectangle(x_origin, y_origin, x_origin+20, y_origin+20, true);
}

x = x_origin;
y = y_origin;
if (x != xprevious or y != yprevious) and in_range and draw { audio_play_sound(snd_thud, 1, false); }

