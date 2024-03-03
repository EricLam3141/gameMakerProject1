if(vsp > 0 and self.y < other.y){
	instance_destroy(other);
	vsp -=6
}
else{
	if(!immunity){
		hp -= 1
		immunity = true;
		alarm[0] = 60;
	}
}