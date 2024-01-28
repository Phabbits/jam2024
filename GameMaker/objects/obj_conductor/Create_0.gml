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
		new stc_event(0.1, new stc_activity_mow()),
		new stc_event(1.1, new stc_activity_attack()),
		new stc_event(1.1, new stc_activity_build(blueprint_house)),
		]

// Start the story
var next_event = storyline[0]
alarm[0] = game_get_speed(gamespeed_fps)*next_event.timer