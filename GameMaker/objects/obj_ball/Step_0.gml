if place_meeting(x, y, obj_pocket){
	instance_destroy()
}

//Stop very slow balls
if phy_speed < 1{
	phy_speed_x *= .99
	phy_speed_y *= .99
}
if phy_speed < .3{
	phy_speed_x *= .90
	phy_speed_y *= .90
}

if hp <= 0{
	instance_destroy()
}

//If the cue is moving
if cue_moving and selected{
	cue_x -= lengthdir_x(point_distance(contact_x, contact_y, cue_x, cue_y), point_direction(contact_x, contact_y, cue_x, cue_y))/(cue_speed*2/5)
	cue_y -= lengthdir_y(point_distance(contact_x, contact_y, cue_x, cue_y), point_direction(contact_x, contact_y, cue_x, cue_y))/(cue_speed*2/5)
	cue_buffer--
	if cue_buffer <= 0{
		physics_apply_impulse(contact_x, contact_y, (contact_x - mouse_x)*hit_scalar, (contact_y - mouse_y)*hit_scalar)
		contact_x = -1
		contact_y = -1
		selected = false
		obj_game_control.num_hits += 1
		cue_buffer = cue_speed
		cue_moving = false
	}
}



