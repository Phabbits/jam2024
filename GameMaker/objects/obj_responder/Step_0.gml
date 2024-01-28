/// @description Respond
if instance_exists(Splat) {
	if distance_to_object(Splat) > Splat.sprite_width {
		move_avoiding(Splat.x, Splat.y, run_speed)
	}
	else if not place_meeting(x, y, Splat) {
		move_towards_point(Splat.x, Splat.y, run_speed)
	}
	else if alarm[0] == -1 {
		alarm[0] = respond_time * game_get_speed(gamespeed_fps)
		speed = 0
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