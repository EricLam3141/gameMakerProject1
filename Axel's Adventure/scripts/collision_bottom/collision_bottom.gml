// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_bottom(){
	mask = argument0;
	
	if collision_circle(x+asin*mask,y+acos*mask,3,obj_testing_walls,true,true) {
		return true;
	} else {
		return false;
	}
}