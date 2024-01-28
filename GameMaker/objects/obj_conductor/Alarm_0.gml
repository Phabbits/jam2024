/// @description Perform event

// Start the event
var event = array_shift(storyline)
if event.prerequisites() {
	event.activity.start()
}
else {
	// Add event back to front and wait one second
	event.timer = 1
	array_insert(storyline, 0, event)
}

// Timer for next event
if array_length(storyline) > 0 {
	var next_event = storyline[0]
	alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)
}