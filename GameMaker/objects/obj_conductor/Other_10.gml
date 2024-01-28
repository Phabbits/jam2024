/// @description Interrupt

if not first_house_built {
	array_insert(storyline, 0, new stc_event(0.1, new stc_activity_build(blueprint_houses[0])))
}
else if not first_death_after_house {
	// Shock all miniatures
	for (var i=0; i<instance_number(obj_miniature); i++) {
		var Miniature = instance_find(obj_miniature, i)
		Miniature.show_speech_shocked = true
		Miniature.alarm[2] = 120
	}
	
	array_insert(storyline, 0, new stc_event(4, new stc_activity_respond()))
	
	first_death_after_house = true
}
else {
	// Respond progressively
	array_insert(storyline, 0, new stc_event(5, new stc_activity_respond()))
	
	if responded_times > 4 {
		array_insert(storyline, 0, new stc_event(2, new stc_activity_attack(responded_times div 2)))
		array_insert(storyline, 0, new stc_event(6, new stc_activity_tank()))
	}
	else if responded_times > 2 {
		array_insert(storyline, 0, new stc_event(5, new stc_activity_attack()))
	}
	responded_times ++
}

// Reset timer for next event
if array_length(storyline) > 0 {
	var next_event = storyline[0]
	alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)
}

interrupt_counter ++