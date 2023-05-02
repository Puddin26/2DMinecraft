/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(Font1);
draw_set_color(c_black);
if num_flour < 1000 { draw_text(x+20, y+10, num_flour); }
else { 
	flour_adapted = floor(num_flour/100)/10;
	flour_adapted = string(flour_adapted) + "k";
	flour_adapted = string_delete(flour_adapted, string_length(flour_adapted)-1, 1);
	draw_text(x+20, y+10, flour_adapted);
}

