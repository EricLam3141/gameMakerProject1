// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_line_right(){
	mask = argument0;
	line = floor(mask*2.5);
	
	if collision_line(x+(acos*mask)+(asin*mask),y-(asin*mask)+(acos*mask),x +(acos*mask)+(asin*line),y -(asin*mask)+(acos*line),obj_block,true,true) {
		return true;
		
	} else {
		return false;
	}
	
}