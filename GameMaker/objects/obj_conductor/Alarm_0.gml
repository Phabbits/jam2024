/// @description Perform event

// Start the event
var event = array_shift(storyline)
event.activity.start()

// Timer for next event
if not array_length(storyline) > 0 {
	var next_event = storyline[0]
	alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)
}