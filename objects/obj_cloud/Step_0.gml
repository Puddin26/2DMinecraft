/// @description Insert description here
// You can write your code in this editor
depth = -6000000
movement = 2 -0.2*distance 
//coefficient is how different speeds are for objects with different
//distnaces to the screen

move_towards_point(x-1, y, movement);

if (x <= -200) {
	x = irandom_range(room_width,room_width*2); 
	y = irandom_range(0, room_height);
}

