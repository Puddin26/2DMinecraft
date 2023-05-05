
if in_range {
	draw = false; 
	if items = Items.HOE {
		if !position_meeting(mouse_x, mouse_y, obj_dirt)
		 { draw = true; }
		else {
			with obj_dirt {
				if position_meeting(mouse_x, mouse_y, self) and sprite_index = spr_wheat
				{ draw = true; }
			}
		}
	}
	
	else if items = Items.SEEDS {
		with obj_dirt {
			if position_meeting(mouse_x, mouse_y, self) 
		       and image_index = 0 and sprite_index = spr_dirt {
				draw = true;
		    }
		}
		if obj_seeds.num_seeds = 0 {
			draw = false;
		}
	} 
	
	if draw {
		draw_set_color(c_white);
	}
	else {
		draw_set_color(c_grey);
	}
	draw_rectangle(x_origin, y_origin, x_origin+40, y_origin+40, true);
}

/*
x = x_origin;
y = y_origin;
if (x != xprevious or y != yprevious) and in_range and draw { audio_play_sound(snd_thud, 1, false); }