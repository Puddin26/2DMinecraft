/// @description Insert description here
// You can write your code in this editor

//make this a switch statement with a plus+1 every time player completes the task
draw_set_font(Fn_tutorial);
draw_set_color(c_black)

switch step {
	
	case time_to.MOVE:
		draw_text(x, y, "Use WASD to move and mouse to click!")
		if keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D")) {
			step = time_to.DIG;
		}
		break;
		
	case time_to.DIG:
		draw_set_color(c_red);
		draw_circle(obj_player.x, obj_player.y, 200, true);
		draw_set_color(c_black);
		draw_text(x, y, "Click and drag on the ground nearby to till the dirt!");
		if instance_number(obj_dirt) > 10 {
			step = time_to.PLANT;
		}
		break;
		
	case time_to.PLANT:
		draw_set_color(c_red);
		draw_circle(obj_seeds.x, obj_seeds.y, 20, true);
		draw_set_color(c_black);
		draw_text(x, y, "Press space while standing next to tools to equip them!");
		draw_text(x, y+30, "Click on tilled dirt nearby to plant seeds!");
		if obj_dirt.image_index = obj_dirt.IMAGE_MAX {
			step = time_to.COLLECT;
		}
		break;
		
	case time_to.COLLECT:
		draw_set_color(c_red);
		draw_circle(obj_dirt.x+20, obj_dirt.y+20, 20, true);
		draw_set_color(c_black);
		draw_text(x, y, "Pick up hoe with space and use it to collect the wheat!")
		if obj_wheat.num_wheat > 0 {
			step = time_to.GRIND;
		}
		break;
		
	case time_to.GRIND:
		draw_text(x, y, "Press space on the windmill to grind wheat into flour")
		if obj_flour.num_flour > 0 {
			step = time_to.BUY;
		}
		break;
		
	case time_to.BUY:
		draw_text(x, y, "Trade flour for cows and chickens! Cows till, chickens pluck and plant!");
		if instance_exists(obj_cow) or instance_exists(obj_chicken) {
			step = time_to.SELF_DESTRUCT;
		}
		break;
		
	case time_to.SELF_DESTRUCT:
		instance_destroy(self);
		break;
}
