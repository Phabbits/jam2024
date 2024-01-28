/// @description Respond to splat
event_inherited()

Splat = instance_nearest(x, y, obj_splat)

// Time to respond in seconds
respond_time = 2

audio_play_sound(snd_siren, 10, false, 0.1)