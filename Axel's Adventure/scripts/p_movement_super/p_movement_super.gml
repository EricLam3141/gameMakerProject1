//Heavily based on a youtube sonic gamemaker tutorial by the channel "Bryan"
function p_movement_super(){
	key_r = keyboard_check(vk_right);
	key_l = keyboard_check(vk_left);
	key_jump = keyboard_check(vk_up)
	
	//Player right movement
	if key_r
	{
		sprite_index = spr_player_running;
		image_xscale = 1;
		if hsp >=0 
		{
			hsp=6;
		}
		else 
		{
			hsp +=deceleration*5;
		}
		
	}
	//Player left movement
	if key_l 
	{
		sprite_index = spr_player_running;
		image_xscale = -1;
		if hsp <=0 
		{
			hsp = -6;
		}
		else 
		{
			hsp -=deceleration*5;
		}
	}
	//Player idle
	if !key_r && ! key_l
	{
		if hsp > 0 hsp -= frc*4;
		if hsp <0 hsp +=frc*4;
		if hsp <= frc && hsp >= -frc hsp = 0;
		sprite_index = spr_player;
	}
	//Jumping
	if key_jump && ground
	{
		ground = false;
		vsp -=6 + (abs(hsp) *  .3);
		sprite_index = spr_player_jumping;
	}
	if !ground or !instance_place(x,y+1,obj_block) {
		sprite_index = spr_player_jumping;
	}
}
