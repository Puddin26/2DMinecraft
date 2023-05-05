draw_self();
draw_set_font(Font1);
draw_set_color(c_white);
if num_cakes < 1000 { draw_text(x+70, y+45, num_cakes); }
else { 
	apples_adapted = floor(num_cakes/100)/10;
	apples_adapted = string(apples_adapted) + "k";
	apples_adapted = string_delete(apples_adapted, string_length(apples_adapted)-1, 1);
	draw_text(x+70, y+45, apples_adapted);
}