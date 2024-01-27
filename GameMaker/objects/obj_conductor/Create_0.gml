/// @description Orchestrate miniatures

// Blueprints
blueprint_house = new stc_blueprint(64, 64, 5, obj_house)

// Create base storyline
storyline = ds_queue_create()
// Add events, timers are in seconds
ds_queue_enqueue(storyline, 
		new stc_event(0.1, new stc_activity_mow()), 
		new stc_event(1.1, new stc_activity_build(blueprint_house)))

// Start the story
var next_event = ds_queue_head(storyline)
alarm[0] = game_get_speed(gamespeed_fps)*next_event.timer