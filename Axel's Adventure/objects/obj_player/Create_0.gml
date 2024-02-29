gravity_direction = 270;
audio_play_sound(snd_axel_idle,0,true,3);

//3 hits and Axel Dies
hp = 3;
enum States {
	
	walking,
	running,
	boosted,
	jumping
}