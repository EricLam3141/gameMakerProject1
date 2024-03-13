gravity_direction = 270;
audio_play_sound(snd_axel_idle,0,true,3);
audio_play_sound(snd_music,1,true);

enum States {
	
	walking,
	running,
	boosted,
	jumping
}
//3 hits and Axel Dies
hp = 3;

//Variables related to character physics and movement turbo mode
hsp = 0;
vsp = 0;
hsp1 = 12;
vsp1 = 12;

// Variables related to character physics and movement supercharger mode
hspSuper = 8
vspSuper = 8

acceleration = 0.057;
deceleration = 0.5;

frc= 0.066875;

grv = 0.21875;

ground = false;

acos = 1;
asin =0;

turbo = true;
super = false;

