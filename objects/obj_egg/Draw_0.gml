draw_self();
draw_set_font(Font1);
draw_set_color(c_white);
if num_eggs < 1000 { draw_text(x+30, y+25, num_eggs); }
else { 
	eggs_adapted = floor(num_eggs/100)/10;
	eggs_adapted = string(eggs_adapted) + "k";
	eggs_adapted = string_delete(eggs_adapted, string_length(eggs_adapted)-1, 1);
	draw_text(x+10, y+15, eggs_adapted);
}