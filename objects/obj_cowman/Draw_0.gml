/// @description Insert description here
// You can write your code in this editor
draw_self();

if bubble_show > 0{
	bubble_right.visible = true
}else{
	bubble_right.visible = false
}


if !place_meeting(x, y, obj_player) and obj_flour.num_flour >= 3 {
	draw_set_color(c_black);
	draw_text(x-50, y-50, "!");
}
else if place_meeting(x, y, obj_player) { 
	bubble_show = 1
	//draw_set_color(c_black); draw_text(x-50, y-50, "3 flour = 1 cow");
}

if !place_meeting(x, y, obj_player){
	bubble_show = 0
}