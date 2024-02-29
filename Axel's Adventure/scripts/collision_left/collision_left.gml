// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_left(){
	mask = argument0;
	
	if collision_circle(x-(acos*mask)-asin*2, y+(asin*mask)-acos*2,3,obj_testing_walls,true,true) {
		return false;
	} else {
		return false;
	}
}