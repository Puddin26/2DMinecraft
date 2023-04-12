/// @description Insert description here
// You can write your code in this editor

/*
options = []

if(global.egg = false) {array_push(options, "an egg")}
if(global.flour = false) {array_push(options, "some flour")}
if(global.milk = false) {array_push(options, "milk")}

if (place_meeting(x, y, obj_player)){
	
	if(array_length(options) = 3){
		draw_text(250, 135, "Want a cake?")
		draw_text(250, 158, "Go find me flour, milk,")
		draw_text(250, 180, "and an egg")
	}
	
	else if(array_length(options) = 2){
		draw_text(250, 180, "Still need " + options[0] + " and " + options[1])
	}
	
	else if(array_length(options) = 1){
		draw_text(250, 180, "Still need " + options[0])
	}
	
	else{
		
		if(global.done = false){
		draw_text(250, 135, "You collected it all!")
		draw_text(250, 158, "Press x to make the cake!")
			if(keyboard_check(ord("X"))){global.done = true}
		}
		else{ 
			draw_text(250, 135, "Unfortunately, I dont't actually")
			draw_text(250, 158, "know how to make cake...")
		}
	}
		
}



/*

Still need an egg

Still need milk

Still need an egg and some flour

Still need an egg and milk

Still need some flour and milk

You collected it all!
Press x to make the cake!

Unfortunately, I don't actually 
know how to make cake...

other:

Where's the udder? Press x 
Udderly expected

Now to grab a single egg with X
So round. So precious. 

