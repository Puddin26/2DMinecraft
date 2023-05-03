/// @description Insert description here
// You can write your code in this editor


//all the alarms eventually need to be multiplied by room speed,
//leaving it fast for debugging purposes

// get egg
if place_meeting(x, y, obj_chicken){
	draw_set_color(c_white);
	if(obj_chicken.has_egg){
		draw_text_transformed(x+5, y-4, "now to grab a single egg with X",  0.5, 0.5, 0);
		if keyboard_check(ord("X")){
			obj_chicken.has_egg = false;
			obj_egg.num_eggs += 1;
		}
	}else{
		if keyboard_check(ord("X")){
			draw_text_transformed(x+5, y-4, "please wait a moment.",  0.5, 0.5, 0);
		}
	}
}

//get milk
if place_meeting(x, y, obj_cow){
	draw_set_color(c_white);
	if(obj_cow.has_milk){
		draw_text_transformed(x+5, y-4, "mr.cow likes you, now press X",  0.5, 0.5, 0);
		if keyboard_check(ord("X")){
			obj_cow.has_milk = false;
			omilk.num_milk += 1;
		}
	}else{
			draw_text_transformed(x+5, y-4, "mr.cow is hungry, try get him some snack",  0.5, 0.5, 0);
	}
}

if (dead = true) {
	//instance_destroy(self); ??
}


//outlines's outline
draw_set_color(c_black);
draw_rectangle(room_width-158, 24, room_width-42, 86, false);

//outlines
draw_set_color(c_grey);
draw_rectangle(room_width-155, 27, room_width-45, 53, false);
draw_rectangle(room_width-155, 57, room_width-45, 83, false);

//hunger
draw_set_color(c_fuchsia);
draw_rectangle(room_width-150, 30, room_width-150+hunger, 50, false);

//health
draw_set_color(c_lime);
draw_rectangle(room_width-150, 60, room_width-150+hp, 80, false);




