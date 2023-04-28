/// @description Insert description here
// You can write your code in this editor

draw_self();
draw_set_font(Font1);
draw_set_color(c_black);
if num_seeds < 1000 { draw_text(x+20, y+20, num_seeds); }
else { 
	seeds_adapted = floor(num_seeds/100)/10;
	seeds_adapted = string(seeds_adapted) + "k";
	seeds_adapted = string_delete(seeds_adapted, string_length(seeds_adapted)-1, 1);
	draw_text(x+20, y+20, seeds_adapted);
}
