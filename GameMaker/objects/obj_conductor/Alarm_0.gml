/// @description Perform event

// Start the event
var event = array_shift(storyline)
event.activity.start()
	
// Timer for next event
if array_length(storyline) > 0 {
	alarm[1] = 1
}