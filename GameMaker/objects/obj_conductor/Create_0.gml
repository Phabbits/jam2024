/// @description Orchestrate miniatures

// Configure potential functions
mp_potential_settings(25, 10, 3, true)

// Interrupt
interrupt_counter = 0

#region Blueprints
blueprint_houses = [new stc_blueprint(96, 96, 5, obj_house),
		new stc_blueprint(72, 72, 5, obj_house_2),
		new stc_blueprint(72, 72, 5, obj_house_3),
		new stc_blueprint(72, 72, 5, obj_house_4),
		new stc_blueprint(72, 72, 5, obj_house_5),
		new stc_blueprint(72, 72, 5, obj_house_6),
		new stc_blueprint(72, 72, 5, obj_house_7),
		new stc_blueprint(72, 72, 5, obj_house_8),
		new stc_blueprint(72, 72, 5, obj_house_9),
		new stc_blueprint(72, 72, 5, obj_house_10),
		new stc_blueprint(72, 72, 5, obj_house_11),
		]
#endregion

#region Storyline
// Storyline flags indicate when story can progress
first_house_built = false
show_speech_first_house = true
show_speech_first_attack = true
show_speech_splat = true
first_death_after_house = false
responded_times = 0

// Add events, timers are in seconds
storyline = [
		new stc_event(10, new stc_activity_build(blueprint_houses[irandom(array_length(blueprint_houses) - 1)])),
		new stc_event(20, new stc_activity_mow(), function(){return first_house_built}),
		new stc_event(5, new stc_activity_visit(2)),
		new stc_event(10, new stc_activity_build(blueprint_houses[irandom(array_length(blueprint_houses) - 1)])),
		new stc_event(5, new stc_activity_visit(4)),
		]

// Repeat pattern after
repeat 10 {
	array_push(storyline, 
			new stc_event(5, new stc_activity_visit(1)),
			new stc_event(10, new stc_activity_build(blueprint_houses[irandom(array_length(blueprint_houses) - 1)])),
			)
}

// Start the story
var next_event = storyline[0]
alarm[0] = game_get_speed(gamespeed_fps)*next_event.timer
#endregion