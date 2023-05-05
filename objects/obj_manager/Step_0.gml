block_x = mouse_x - mouse_x%20
if block_x%40 = 0 { block_x += 20 }

block_y = mouse_y - mouse_y%20
if block_y%40 = 0 { block_y += 20 }

displacement = block_x - obj_player.x;
distance_x = sign(displacement) * displacement;
displacement = block_y - obj_player.y;
distance_y = sign(displacement) * displacement;
if distance_x*distance_x + distance_y*distance_y < 40000 { in_range = true;}
else { in_range = false; }
x_origin = mouse_x-mouse_x%40;
y_origin = mouse_y-mouse_y%40;

x = x_origin;
y = y_origin;
if (x != xprevious or y != yprevious) and in_range {
	audio_play_sound(snd_thud, 1, false);
}

switch (items) {
	case (Items.HOE):
		if mouse_check_button_released(mb_left) and !position_meeting(mouse_x, mouse_y, obj_dirt) and in_range {
			instance_create_layer(x_origin, y_origin, "Ground", obj_dirt);
		}
		else {
			with obj_dirt {
				if mouse_check_button_released(mb_left) and position_meeting(mouse_x, mouse_y, self) and obj_manager.in_range
				and sprite_index = spr_wheat {
					obj_seeds.num_seeds += image_index+1;
					obj_wheat.num_wheat += image_index;
					sprite_index = spr_dirt;
					image_index = 0;
				//running the create statement once again- is it more efficent to instance destroy and create?
					alarm[0] = (choose(0, 2, 10)+20)*room_speed;
					you_put_seeds_in_in_time = false;
					safe = false;
					ungrown_wheat = false
					growth_level = -1
					
				}
			}
		}
		break;
	case (Items.SEEDS):
		with obj_dirt {
			if mouse_check_button_released(mb_left) and position_meeting(mouse_x, mouse_y, self) and obj_manager.in_range
			and obj_seeds.num_seeds > 0 {
				if image_index = 0 and sprite_index = spr_dirt { 
					obj_seeds.num_seeds -= 1;
					image_index = 1;
				}
			}
		}
		break;
	case (Items.BUCKET):
		break;
}