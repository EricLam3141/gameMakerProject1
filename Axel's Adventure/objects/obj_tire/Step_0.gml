/// @description Insert description here
// You can write your code in this editor
//image_angle += .5; // Just to make it look like it is rotating, high rotation speeds get funky
gravity = 0.1;

//Logic for tire bouncing. If it hits player, 
//then it turns around if player is moving in the same direction, boost tire in same direction 
if (hit_player = false) {
hspeed = move_speed;
} else if (hit_player = true) {
	if(obj_player.hspeed > 0 ) {
		hspeed = move_speed*2;
	} else if (obj_player.hspeed < 0) {
		hspeed = -move_speed*2;
	}
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

