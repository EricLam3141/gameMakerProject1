//Draws GUI for Score

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))

//Draws GUI for Coins

draw_set_halign(fa_left)
draw_text(55, 70, "Coins: " + string(obj_player_curve.coin_total))

//Draws GUI for Lives (Currently uses player sprite)

for(i = 0; i < obj_player_curve.hp; i++){
	draw_sprite(spr_player,0,(50 + 24 * i),15)
}

//TODO Place Game Over Code here

//Temp 'Health Bar' 
if instance_exists(obj_player_curve){
//health
draw_text(55, 85, "Health: " + string(obj_player_curve.hp))

}


