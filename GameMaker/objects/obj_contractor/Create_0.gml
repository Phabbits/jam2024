/// @description Pick a plot
event_inherited()

// Set by optional struct
//blueprint = pointer_null

// Marker object reserves the space from other planners
Marker = noone
// No path returns as -1
path = -1

// Pause if first
if not obj_conductor.first_house_built {
	alarm[0] = 3*game_get_speed(gamespeed_fps)
}
else {
	alarm[0] = 1
}