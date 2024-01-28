/// @description Pick target
event_inherited()

run_speed = 1

Target = instance_nearest(x, y, obj_ball)

range = 64
reload_time = 2

if obj_conductor.show_speech_first_attack {
	alarm[1] = 120 //Speech bubble timer
	audio_play_sound(snd_voice, 10, false)
}