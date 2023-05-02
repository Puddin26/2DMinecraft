/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(Font1);
draw_set_color(c_black);
<<<<<<< HEAD
if num_apples < 1000 { draw_text(x+10, y+15, num_apples); }
=======
if num_apples < 1000 { draw_text(x+24, y+5, num_apples); }
>>>>>>> Bohan
else { 
	apples_adapted = floor(num_apples/100)/10;
	apples_adapted = string(apples_adapted) + "k";
	apples_adapted = string_delete(apples_adapted, string_length(apples_adapted)-1, 1);
<<<<<<< HEAD
	draw_text(x+10, y+15, apples_adapted);
=======
	draw_text(x+24, y+5, apples_adapted);
>>>>>>> Bohan
}