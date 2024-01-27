/// @description Perform event

// Start the event
var event = ds_queue_dequeue(storyline)
event.activity.start()

// Timer for next event
if not ds_queue_empty(storyline) {
	var next_event = ds_queue_head(storyline)
	alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)
}