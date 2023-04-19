

displacement = mouse_x - obj_player.x;
distance_x = sign(displacement) * displacement;
displacement = mouse_y - obj_player.y;
distance_y = sign(displacement) * displacement;
if distance_x < 100 and distance_y < 100 { in_range = true;}
else { in_range = false; }
		
		
switch (items) {
	
	case (Items.HOE):
		if mouse_check_button(mb_left) and !position_meeting(mouse_x, mouse_y, obj_dirt) and in_range {
			x_origin = mouse_x-mouse_x%20;
			y_origin = mouse_y-mouse_y%20;
			instance_create_layer(x_origin, y_origin, "Ground", obj_dirt);
		}
		else {
			//give visual error on the mouse or play an error noise??
		}
		break;
	case (Items.SEEDS):
			if mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, obj_dirt) and in_range {
				dirt = instance_nearest(mouse_x, mouse_y, obj_dirt);
				dirt.image_index = 1;
			}
		break;
	case (Items.BUCKET):
		break;
}