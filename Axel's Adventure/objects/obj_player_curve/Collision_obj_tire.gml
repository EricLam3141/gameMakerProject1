
//Provides hit regisration and immunity frames after taking damage
if(instance_exists(obj_player_curve) and !immunity){
	audio_play_sound(snd_tire_hit,1,false);
	if obj_player_curve.hsp >= 0 {
	show_debug_message("Hit 1");
	obj_player_curve.hsp -=  hsp1*.7;
	} else if obj_player_curve.hsp < 0  {
	show_debug_message("Hit 2");
	obj_player_curve.hsp += hsp1*.7
	}
	immunity = true;
	stunned = true;
	hp -= 1;	
	layer_set_visible("ScreenShake", true)
	alarm[0] = 60;
	
	

}



