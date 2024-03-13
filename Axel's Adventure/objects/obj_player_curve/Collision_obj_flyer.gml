if(vsp > 0 and self.y < other.y){
	audio_play_sound(snd_enemy_death,1,false)
	instance_destroy(other);
	vsp = -6
}
else{
	if(!immunity){
		audio_play_sound(snd_axel_hit,1,false)
		hp -= 1
		immunity = true;
		stunned = true;
		alarm[0] = 60;
	}
}