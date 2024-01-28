/// @description Move and squash

// Move
x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)

// Squash
if place_meeting(x, y, obj_ball) {
	instance_create_layer(x, y, "Instances", obj_splat)
	// Storyline interrupt
	with obj_conductor event_user(0)
	obj_game_control.people_squashed += 1
	
	// Add husk
	with instance_create_layer(x, y, "Instances", obj_husk){
		sprite_index = other.sprite_index
		image_index = image_number - 1
	}
	
	instance_destroy()
}

//Rotate
if xprevious != x or yprevious != y {
	image_angle = point_direction(xprevious, yprevious, x, y)
}
