/// @description Move and squash

// Move
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

// Squash
if place_meeting(x, y, obj_ball) {
	instance_create_layer(x, y, "Instances", obj_splat)
	with obj_conductor event_user(0)
	instance_destroy()
}

//Rotate
image_angle = point_direction(xprevious, yprevious, x, y)
