/// @description Start mowing
event_inherited()

speed = walk_speed

// Pick a random direction
direction = irandom(3)*90
image_angle = direction
image_speed = 0

// Audio
audio_play_sound(snd_engine_start, 10, false, 0.5)