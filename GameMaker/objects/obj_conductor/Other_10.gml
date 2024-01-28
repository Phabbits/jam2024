/// @description Interrupt

if not first_house_built {
	array_insert(storyline, 0, new stc_event(0.1, new stc_activity_build(blueprint_house)))
}

// Reset timer for next event
var next_event = storyline[0]
alarm[0] = next_event.timer*game_get_speed(gamespeed_fps)

interrupt_counter ++