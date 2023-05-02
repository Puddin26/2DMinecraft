/// @description Insert description here
// You can write your code in this editor

with obj_dirt {
	if image_index = 3 {
		if place_meeting(x, y, obj_chicken) {
			obj_seeds.num_seeds += 3;
			obj_wheat.num_wheat += 2;
			sprite_index = spr_dirt;
			image_index = 0;
			alarm[0] = (choose(0, 2, 10)+20)*room_speed;
			you_put_seeds_in_in_time = false;
			safe = false;
			ungrown_wheat = false;
			growth_level = -1;		
		}
	}
	else if sprite_index = spr_dirt and image_index = 0  {
		if place_meeting(x, y, obj_chicken) and obj_seeds.num_seeds > 0 {
			obj_seeds.num_seeds -= 1;
			image_index = 1;
		}
	}
}
