// Move Left
if(keyboard_check(vk_left)){
	hspeed -= move_speed;
}

// Move Right
if(keyboard_check(vk_right)){
	hspeed += move_speed;
}

// Decelleration 
if not keyboard_check(vk_anykey){
	hspeed -= sign(hspeed);
}

// Jump
if (keyboard_check(vk_up)){
	//if(instance_place(x,y+1,obj_block)){
		vspeed = jump_height;
	//}
}

// Gravity handling
if(instance_place(x,y+1,obj_block)){
	gravity = 0;
}
else{
	gravity = 0.25;
}

// Temporary X restraint
x = clamp(x, sprite_width/2,room_width-sprite_width/2);