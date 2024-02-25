/// @description Insert description here
// You can write your code in this editor
image_angle += .5; // Just to make it look like it is rotating, high rotation speeds get funky
gravity = 0.1;

//Logic for tire bouncing, if it hits player, then it turns around 
if (hit_player = false) {
hspeed = -move_speed;
}
else if (hit_player = true) {
	hspeed = move_speed;
	vspeed = bounce_height/2;
	if(alarm[1] < 0) {         //Dunno why I needed to add the if statement, but it doesnt work otherwise
		alarm[1] = 60;
	}
}

//Bounce the tire once it reaches the ground
if(instance_place(x,y+1,obj_block)){
	//jump_timer = false;        //Redundancy to prevent bouncing too quickly remove if needed
	//alarm[0] = 15;          
	vspeed = bounce_height;
	bounce_height = bounce_height*.8    //Mimics bouncing elasticity
}
// Once bounce height gets too low, destroy the tire
if bounce_height > -1 {
	instance_destroy(obj_tire);
}

