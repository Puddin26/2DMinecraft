/// @description Insert description here
// You can write your code in this editor
enum face
{
	up,
	down,
	left,
	right
}

facing = face.down

randomize();
instance_create_layer(x, y, "Player", obj_ghost);

//spd = [0,0];
//movement_speed = 10

hunger = 100
hp = 100 

dead = false;


//hunger decreaser
alarm[0] = 120*room_speed;

// oven_list
oven_y = room_height / 2 - 100;
oven_x = room_width / 2 - 250;
instance_create_layer(oven_x, oven_y, "oven", obj_oven_list);
obj_oven_list.visible = false;