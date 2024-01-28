/// @description Fly

// Collide
with instance_place(x, y, obj_ball){
	hp -= 10
	instance_destroy(other)
}

if not place_free(x, y) {
	instance_destroy()
}

// Max range
if distance_to_point(xstart, ystart) > range {
	instance_destroy()
}