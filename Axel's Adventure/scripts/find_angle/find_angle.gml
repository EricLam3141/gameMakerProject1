// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_angle(){
	angle = round(argument0/8)*8;
	hspace = argument1;
	check = argument2;
	
	acos = cos(degtorad(angle));
	asin = sin(degtorad(angle));
	
	x1 = round(x-(acos*hspace));
	y1 = round(y+(asin*hspace));
	
	x2 = round(x+(acos*hspace));
	y2 = round(y-(asin*hspace));
	
	done1 = 0;
	done2 = 0;
	
	i = check;
	while(i>0) 
	{
		if !done1
		{
			if collision_point(x1,y1,obj_block,true,true) done1 = true;
			x1 += asin;
			y1 += acos;
		}
		if !done2 
		{
			if collision_point(x2,y2,obj_block,true,true) done2 = true;
			x2 += asin;
			y2 += acos;
		}
		if done1 && done2 break;
		i -= 1;
	}
	
return round(point_direction(x1,y1,x2,y2));
}