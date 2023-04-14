/// @description Insert description here
// You can write your code in this editor

draw_self()

if (place_meeting(x, y, obj_player)){
	
	
	if(global.lasso = true){
		
		draw_text(250, 180, "Mount me, sire. Press x.")
		if(keyboard_check(ord("X"))){global.lasso = false; global.lasso_gone = true;}}
	
	else if (global.lasso = false and global.lasso_gone = false) {
		draw_text(250, 180, "Moo.");}
		
	else {
		audio_stop_all();
		
		with(obj_player) {
			instance_destroy(obj_cow);
			sprite_index = sp_cowboy;
		}
		
		audio_play_sound(snd_cowboy, 2, true);
		
		
		}
	
	
}
