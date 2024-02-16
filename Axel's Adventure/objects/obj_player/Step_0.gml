// Movement Left
if(keyboard_check(vk_left) or keyboard_check(ord("A"))){
	hspeed -= move_speed;
}

// Movement Right
if(keyboard_check(vk_right) or keyboard_check(ord("D"))){
	hspeed += move_speed;
}

if not keyboard_check(vk_left) and not keyboard_check(vk_right) and not keyboard_check(ord("D")) and not  keyboard_check(ord("A")){
	hspeed -= sign(hspeed);
}

// speed limits
x = clamp(x, sprite_width/2,room_width-sprite_width/2);
//hspeed = clamp(vspeed, -4, 4);