/// @description Clack
if phy_speed > 10 {
	audio_play_sound(snd_ball_break, 10, false, phy_speed/20)
}
else if phy_speed > 5 {
	audio_play_sound(snd_ball_clack, 10, false)
}