/// @description Pick a plot
event_inherited()

// Set by optional struct
//blueprint = pointer_null

// Marker object reserves the space from other planners
Marker = noone
// No path returns as -1
path = -1

//Speech stuff
show_speech_build = false
show_speech_happy = false

// Pause if first
if not obj_conductor.first_house_built {
	show_speech_happy = true //Show speech bubble
	audio_play_sound(snd_voice, 10, false)
	alarm[0] = 3*game_get_speed(gamespeed_fps)
}
else {
	alarm[0] = 1
}