/// @description Insert description here
// You can write your code in this editor


//all the alarms eventually need to be multiplied by room speed,
//leaving it fast for debugging purposes


draw_self();

if (dead = true) {
	//instance_destroy(self);
}

//outlines
draw_set_color(c_grey);
draw_rectangle(room_width-155, 27, room_width-45, 53, false);
draw_rectangle(room_width-155, 57, room_width-45, 83, false);

//hunger
draw_set_color(c_red);
draw_rectangle(room_width-150, 30, room_width-150+hunger, 50, false);

//health
draw_set_color(c_green);
draw_rectangle(room_width-150, 60, room_width-150+hp, 80, false);



