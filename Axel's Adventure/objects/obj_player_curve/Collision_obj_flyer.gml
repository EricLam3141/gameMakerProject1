if(vsp > 0 and self.y < other.y){
	instance_destroy(other);
	vsp -= (vsp *1.3)
}
else{
	if(!immunity){
		hp -= 1
		immunity = true;
		alarm[0] = 60;
	}
}