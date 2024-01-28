/// @description Fly

// Collide
if not place_free(x, y) {
	instance_destroy()
}

// Max range
if distance_to_point(xstart, ystart) > range {
	instance_destroy()
}