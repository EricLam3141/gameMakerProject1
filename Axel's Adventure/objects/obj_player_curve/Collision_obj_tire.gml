
//Provides hit regisration and immunity frames after taking damage
if(instance_exists(obj_player_curve) and !immunity){
	if obj_player_curve.hsp >= 0 {
	show_debug_message("Hit 1");
	obj_player_curve.hsp -=  hsp1;
	} else if obj_player_curve.hsp < 0  {
	show_debug_message("Hit 2");
	obj_player_curve.hsp += hsp1
	}
	immunity = true;
	hp -= 1;	
	alarm[0] = 60;
	
	
}



