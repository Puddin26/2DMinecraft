/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(Font1);
draw_set_color(c_white);
if num_wheat < 1000 { draw_text(x+10, y+15, num_wheat); }
else { 
	wheat_adapted = floor(num_wheat/100)/10;
	wheat_adapted = string(wheat_adapted) + "k";
	wheat_adapted = string_delete(wheat_adapted, string_length(wheat_adapted)-1, 1);
	draw_text(x+10, y+15, wheat_adapted);
}
