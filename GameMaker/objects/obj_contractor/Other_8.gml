/// @description 
if position_meeting(Marker.x, Marker.y, self) {
	// Start building
	show_speech_build = true
	alarm[1] = blueprint.build_time * game_get_speed(gamespeed_fps)
	audio_play_sound(snd_build, 10, false)
}