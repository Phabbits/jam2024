/// @description Start mowing
event_inherited()

speed = walk_speed

// Pick a random direction
direction = irandom(3)*90
image_angle = direction
image_speed = 0

// Audio
audio_play_sound(snd_engine_start, 10, false, 0.5)

//Make U-Turn
u_turn = false //Whether the mower is in the process of turning around or not
turn_right = true //If the next turn on the U-turn will be to the right or left (for snaking)