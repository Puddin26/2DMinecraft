draw_self()

image_speed = 0.3
switch (facing){
	case(face.down):
		sprite_index = spr_stilldown;
		if keyboard_check(ord("S")) {
			sprite_index = spr_walkdown
			image_speed = 1
		}
		if mouse_check_button(mb_left){
			sprite_index = spr_actiondown
		}
	break;
	
	case(face.up):
		sprite_index = spr_stillup;
		if keyboard_check(ord("W")) {
			sprite_index = spr_walkup
			image_speed = 1
		}
		if mouse_check_button(mb_left){
			sprite_index = spr_actionup
		}
	break;
	
	case(face.left):
		sprite_index = spr_stillleft;
		if keyboard_check(ord("A")) {
			sprite_index = spr_walkleft
			image_speed = 1
		}
		if mouse_check_button(mb_left){
			sprite_index = spr_actionleft
		}
	break;
	
	case(face.right):
		sprite_index = spr_stillright;
		if keyboard_check(ord("D")) {
			sprite_index = spr_walkright
			image_speed = 1
		}
		if mouse_check_button(mb_left){
			sprite_index = spr_actionright
		}
	break;
}

