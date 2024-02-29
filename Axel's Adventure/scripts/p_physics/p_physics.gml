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
		for ( i = 0; i < hsp && !collision_circle(x+16,y,3,obj_testing_walls,true,true); i+=1) 
		{
			x +=1;
		}
	}
	if hsp < 0
	{
		for(i = 0; i > hsp && !collision_circle(x-16,y,3,obj_testing_walls,true,true); i-=1)
		{
			x -=1;
		}
	}
	// Vertical Movement
	if vsp > 0 
	{
		for ( i = 0; i < vsp && !collision_circle(x,y+16,3,obj_testing_walls,true,true); i+=1) 
		{
			y +=1;
		}
	}
	if vsp < 0
	{
		for(i = 0; i > vsp && !collision_circle(x,y-16,3,obj_testing_walls,true,true); i-=1)
		{
			y -=1;
		}
	}
	//Collision with walls
	while(collision_circle(x+16,y,3,obj_testing_walls,true,true))
	{
		x -=1;
	}
	while(collision_circle(x-16,y,3,obj_testing_walls,true,true))
	{
		x +=1;
	}
	
	//On ground
	if vsp >=0 && !ground && collision_circle(x,y+16,3,obj_testing_walls,true,true)
	{
		vsp = 0;
		ground = true;
	}
	
	//Leave ground
	if !collision_circle(x,y+16,3,obj_testing_walls,true,true) && ground 
	{
		ground = false
	}
	
	if !ground vsp +=grv;
}