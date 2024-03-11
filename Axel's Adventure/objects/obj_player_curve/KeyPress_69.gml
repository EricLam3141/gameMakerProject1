/// @description Insert description here
// You can write your code in this editor



if (obj_player_curve.super) {
	super = false;
	turbo = true;
	hsp = 0
	if(alarm[1] < 0) {         
		alarm[1] = 30;
	}
	
} else if (obj_player_curve.turbo) {
	super = true;
	turbo = false;
	hsp = 0
	if(alarm[1] < 0) {         
		alarm[1] = 30;
	}
}
