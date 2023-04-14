/// @description Insert description here
// You can write your code in this editor

hunger -= 10;

if hunger > 0 {
	alarm[0] = 30;
}
else {
	alarm[1] = 5;
	hunger = 0;
	//starvation damages health
}