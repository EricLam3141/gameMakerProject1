//Heavily based on a youtube sonic gamemaker tutorial by the channel "Bryan"
function p_movement(){
	key_r = keyboard_check(vk_right);
	key_l = keyboard_check(vk_left);
	key_jump = keyboard_check(vk_space)
	
	if key_r
	{
		if hsp >=0 
		{
			hsp+=acceleration;
		}
		else 
		{
			hsp +=deceleration;
		}
		
	}
	if key_l 
	{
		if hsp <=0 
		{
			hsp -=acceleration;
		}
		else 
		{
			hsp -=deceleration;
		}
	}
	if !key_r && ! key_l
	{
		if hsp > 0 hsp -= frc;
		if hsp <0 hsp +=frc;
		if hsp <= frc && hsp >= -frc hsp = 0;
	}
	if key_jump && ground
	{
		ground = false;
		vsp -=6;
	}
}
