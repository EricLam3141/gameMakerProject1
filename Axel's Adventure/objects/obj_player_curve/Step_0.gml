//Physics logic for player
p_physics()

//Current movement de-facto turbo mode
if !obj_player_curve.immunity and turbo {
	//Script for player movement, works alongside p_physics
	p_movement()
}
//Need to add supercharger mode
if !obj_player_curve.immunity and super{
	show_debug_message("Turbo")
	p_movement_super()
}

//Player death
if hp <= 0 {
	audio_stop_all()
	room_goto(PlayerDeath)
}