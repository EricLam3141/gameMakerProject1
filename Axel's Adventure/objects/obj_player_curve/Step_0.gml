//Physics logic for player
p_physics()

//Current movement de-facto turbo mode
if !obj_player_curve.immunity and super {
	//Script for player movement, works alongside p_physics
	show_debug_message("Turbo")
	p_movement()
}
//Need to add supercharger mode
if !obj_player_curve.immunity and turbo{
	show_debug_message("Super")
	p_movement_super()
}

//Player death
if hp <= 0 {
	room_goto(PlayerDeath)
}