/// @description Orchestrate miniatures

// Configure potential functions
mp_potential_settings(25, 10, 3, true)

// Interrupt
interrupt_counter = 0

// Blueprints
blueprint_house = new stc_blueprint(64, 64, 5, obj_house)

// Create base storyline
// Add events, timers are in seconds
storyline = [
		new stc_event(0.1, new stc_activity_visit()),
		new stc_event(1, new stc_activity_attack()),
		new stc_event(15, new stc_activity_build(blueprint_house)),
		new stc_event(16, new stc_activity_attack()),
		new stc_event(15, new stc_activity_build(blueprint_house)),
		new stc_event(10, new stc_activity_mow()),
		]

// Start the story
var next_event = storyline[0]
alarm[0] = game_get_speed(gamespeed_fps)*next_event.timer