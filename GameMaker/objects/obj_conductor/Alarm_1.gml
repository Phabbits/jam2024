/// @description Next event
var next_event = storyline[0]
if next_event.prerequisites() {
	alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)
}
else{
	// Prerequisite hold
	alarm[1] = 1
}