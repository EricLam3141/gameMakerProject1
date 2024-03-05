//Physics logic for player
p_physics()

if obj_player_curve.immunity = false {
	//Script for player movement, works alongside p_physics
	p_movement()
}

if hp <= 0 {
	room_goto(PlayerDeath)
}