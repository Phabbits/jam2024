/// @description Charge and attack
if instance_exists(Target) {
	if distance_to_object(Target) > range {
		// Charge
		move_avoiding(Target.x, Target.y, walk_speed)
	}
	else {
		// Stop
		speed = 0
		// Attack
		if alarm[0] <= 0 {
			instance_create_layer(x, y, "Instances", obj_rocket, {
				speed : 4,
				direction : point_direction(x, y, Target.x, Target.y),
				range : 128,
			})
			alarm[0] = reload_time * game_get_speed(gamespeed_fps)
		}
	}
}
else {
	// Return
	if distance_to_point(xstart, ystart) > 0 {
		move_avoiding(xstart, ystart, run_speed)
	}
	else {
		instance_destroy()
	}
}

image_angle = point_direction(x, y, xprevious, yprevious)