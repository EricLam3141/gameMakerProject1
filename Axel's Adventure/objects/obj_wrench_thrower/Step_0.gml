if((distance_to_object(obj_player_curve) < 100) and obj_wrench_thrower.can_toss){
	obj_wrench_thrower.can_toss = false;
	alarm[0] = 120;
}