/// @description Insert description here
// You can write your code in this editor

draw_self();

if (!place_meeting(x, y, obj_player) and (draw_it = true)){
	draw_text(x, y - 135, "hey buddy hey hey c'mere hey hello")
}

if place_meeting(x,y,obj_chicken){
 if egg = 0{
 draw_text_transformed(x+5, y-4, "now to grab a single egg with X",  0.2, 0.2, 0);
 }
 if egg = 1{
 draw_text_transformed(x+5, y-4, "So round. So precious",  0.2, 0.2, 0);
 }
}
