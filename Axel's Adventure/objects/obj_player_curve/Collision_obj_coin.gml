/// @description Score and Deleting Coin

audio_play_sound(snd_coin,1,false);
score += obj_coin.score;
coin_total += 1;
instance_destroy(other);

