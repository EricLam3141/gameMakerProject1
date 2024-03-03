image_angle += .5; // Just to make it look like it is rotating, high rotation speeds get funky
gravity = 0.1;

//Logic for tire bouncing and player collision. 

if (hit_player = false) {
hspeed = move_speed;                   //Normal state, tire moves left
} 
else { 
	if(obj_player_curve.hsp > 0 ) {            //Interacting with player collision
		hspeed = move_speed*2;
	} else if (obj_player_curve.hsp < 0) {
		hspeed = -move_speed*2;
	}
	vspeed = bounce_height/2;
	if(alarm[1] < 0) {         //Dunno why I needed to add the if statement, but it doesnt work otherwise
		alarm[1] = 30;
	}
}

//Bounce the tire once it reaches the ground
if(instance_place(x,y+1,obj_block)){   
	vspeed = bounce_height;
	bounce_height = bounce_height*.8    //Mimics bouncing elasticity
}
// Once bounce height gets too low, destroy the tire
if bounce_height > -1 {
	instance_destroy();
}

