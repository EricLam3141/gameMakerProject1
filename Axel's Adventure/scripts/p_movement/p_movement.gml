//Heavily based on a youtube sonic gamemaker tutorial by the channel "Bryan"
function p_movement(){
	key_r = keyboard_check(vk_right);
	key_l = keyboard_check(vk_left);
	key_jump = keyboard_check(vk_up)
	
	//Player right movement
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
	//Player left movement
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
	//Player idle
	if !key_r && ! key_l
	{
		if hsp > 0 hsp -= frc;
		if hsp <0 hsp +=frc;
		if hsp <= frc && hsp >= -frc hsp = 0;
	}
	//Jumping
	if key_jump && ground
	{
		ground = false;
		vsp -=6 + (abs(hsp) *  .3);
	}
}
