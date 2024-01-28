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
			var dir = point_direction(x, y, Target.x, Target.y)
			var fire_x = x + lengthdir_x(sprite_width/2, dir) + lengthdir_x(4, dir)
			var fire_y = y + lengthdir_y(sprite_width/2, dir) + lengthdir_y(4, dir)
			instance_create_layer(fire_x, fire_y, "Instances", obj_rocket, {
				speed : 4,
				direction : dir,
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