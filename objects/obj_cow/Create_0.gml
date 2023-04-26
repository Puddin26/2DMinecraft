/// @description Insert description here
// You can write your code in this editor

timer = 0 
spd = 1 
moving = false

enum states
{
	free,
	approach,
	alert
}

state = states.free
