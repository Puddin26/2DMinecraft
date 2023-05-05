/// @description Insert description here
// You can write your code in this editor

timer = 0 
spd = 1 
moving = false
num_movements = 4;

enum states
{
	free,
	approach,
	alert
}

state = states.free

has_milk = true