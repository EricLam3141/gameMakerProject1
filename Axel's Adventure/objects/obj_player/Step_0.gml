show_debug_message(hspeed)


// Move Left || Added player stun
if(keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_block) and immunity = false){
	hspeed -= move_speed;
}

// Move Right || Added player stun
if(keyboard_check(vk_right)and !instance_place(x+move_speed,y,obj_block)and immunity = false){
	hspeed += move_speed;
}

// Decelleration 
if not keyboard_check(vk_anykey){
	hspeed -= sign(hspeed);
}

// Jump
if (keyboard_check(vk_up)){
	if(instance_place(x,y+1,obj_block)){
		vspeed = jump_height;
		sprite_index = spr_player_jumping;
	}
}

// Gravity handling
if(instance_place(x,y+1,obj_block)){
	gravity = 0;
}
else{
	gravity = 0.25;
}

hspeed = clamp(hspeed, -10, 10);
