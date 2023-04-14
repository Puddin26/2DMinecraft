/// @description Insert description here
// You can write your code in this editor


//making dirt (the dirt is gross will fix sprite later
//also maybe do this on release but leaving it for now cuz drawing is fun
if mouse_check_button(mb_left) and !position_meeting(mouse_x, mouse_y, obj_dirt){
		x_origin = mouse_x-mouse_x%20;
		y_origin = mouse_y-mouse_y%20;
		instance_create_layer(x_origin, y_origin, "Ground", obj_dirt);
}
else {
	//give visual error on the mouse or play an error noise
	//or maybe clicking it again can delete the instance??
}