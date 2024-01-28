/// @description Orchestrate miniatures

// Configure potential functions
mp_potential_settings(25, 10, 3, true)

// Interrupt
interrupt_counter = 0

#region Blueprints
blueprint_house = new stc_blueprint(64, 64, 5, obj_house)
#endregion

#region Storyline
// Storyline flags indicate when story can progress
first_house_built = false
first_death_after_house = false
responded_times = 0

// Add events, timers are in seconds
storyline = [
		new stc_event(0.1, new stc_activity_tank(3)),
		new stc_event(0.1, new stc_activity_build(blueprint_house)),
		new stc_event(5, new stc_activity_mow(), function(){return first_house_built}),
		new stc_event(5, new stc_activity_visit(2)),
		new stc_event(10, new stc_activity_build(blueprint_house)),
		new stc_event(5, new stc_activity_visit(4)),
		]

// Start the story
var next_event = storyline[0]
alarm[0] = game_get_speed(gamespeed_fps)*next_event.timer
#endregion