/// @description Insert description here
// You can write your code in this editor

if x > obj_player.x {
	x += ((obj_player.x+50) - x)/30
}
else {
	x += ((obj_player.x-50) - x)/30
}

if y > obj_player.y {
	y += ((obj_player.y+50) - y)/30
}
else {
	y += ((obj_player.y-50) - y)/30
}