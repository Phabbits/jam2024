/// @description 
if position_meeting(Marker.x, Marker.y, self) {
	// Start building
	alarm[1] = blueprint.build_time * game_get_speed(gamespeed_fps)
	audio_play_sound(snd_build, 10, false)
}