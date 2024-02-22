//Draws GUI for Score

draw_set_halign(fa_left)
draw_text(55, 55, "Score: " + string(score))

//Draws GUI for Coins

draw_set_halign(fa_left)
draw_text(55, 70, "Coins: " + string(obj_player.coin_total))

//Draws GUI for Lives (Currently uses player sprite)

for(var i = 0; i < lives; i++){
	draw_sprite(spr_player,0,(50 + 24 * i),15)
}

//TODO Place Game Over Code here

//Temp 'Health Bar' 
if instance_exists(obj_player){
//health
draw_text(55, 85, "Health: " + string(obj_player.hp))

}


