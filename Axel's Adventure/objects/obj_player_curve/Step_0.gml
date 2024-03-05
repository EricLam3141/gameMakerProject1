//Physics logic for player
p_physics()

//Current movement de-facto turbo mode
if !obj_player_curve.immunity {
	//Script for player movement, works alongside p_physics
	p_movement()
}
//Need to add supercharger mode
if !obj_player_curve.immunity {
	
}

//Player death
if hp <= 0 {
	room_goto(PlayerDeath)
}