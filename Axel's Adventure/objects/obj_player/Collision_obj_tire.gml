/// @description Insert description here
// You can write your code in this editor

//Provides hit regisration and immunity frames after taking damage
if(instance_exists(obj_player)) and immunity = false {
	immunity = true
	hp -= 1
	obj_player.hspeed += -move_speed*20
	alarm[0] = 60;
}




