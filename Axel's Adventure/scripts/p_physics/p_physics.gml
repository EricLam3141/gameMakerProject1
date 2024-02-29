//Heavily based on a youtube sonic gamemaker tutorial by the channel "Bryan"
function p_physics(){
	//Limits
	if hsp > hsp1 hsp = hsp1;
	if hsp <-hsp1 hsp =-hsp1;
	if vsp>vsp1 vsp = vsp1;
	if vsp<-vsp1 vsp = vsp1;

	//Horizontal movement
	if hsp > 0 
	{
		for ( i = 0; i < hsp && !collision_right(16); i+=1) 
		{
			x += acos;
			y-= asin;
		}
	}
	if hsp < 0
	{
		for(i = 0; i > hsp && !collision_left(16); i-=1)
		{
			x -= acos;
			y += asin;
		}
	}
	// Vertical Movement
	if vsp > 0 
	{
		for ( i = 0; i < vsp && !collision_bottom(16); i+=1) 
		{
			y +=1;
		}
	}
	if vsp < 0
	{
		for(i = 0; i > vsp && !collision_top(16); i-=1)
		{
			y -=1;
		}
	}
	//Collision with walls
	while(collision_right(16))
	{
		x -= acos;
		y += asin;
	}
	while(collision_left(16))
	{
		x += acos;
		y += asin;
	}
	
	//On ground (Landing)
	if vsp >=0 && !ground && collision_bottom(16) || collision_line_left(16)
	{
		vsp = 0;
		ground = true;
	}
	//Bind to ground
	if ground 
	{
		while collision_main(16) 
		{
			x -= asin;
			y -= acos;
		}
		while (collision_ground(16) && !collision_main)
		{
			x += asin;
			y -= acos;
		}
	}
	
	//Leave ground
	if !collision_line_left(16) || !collision_line_right(16) && ground 
	{
		ground = false
	}
	
	if !ground vsp +=grv;
}