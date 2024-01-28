if place_meeting(x, y, obj_pocket){
	//If you get in the cue ball, subtract a point and take it out
	if image_index == 0{
		obj_game_control.balls_pocketed -= 1
		obj_game_control.num_hits += 1
		var tries = 100
		for (var i=0; i<tries; i++){
			if place_empty(1040 + i*4, 368){
				instance_create_layer(1040 + i*4, 368, "lay_balls", obj_ball)
				break
			}
		}
		instance_destroy()
	}
	else{
		//If the type of ball is not set, set it
		if obj_game_control.current_type == -1{
			if image_index >= 1 and image_index <= 7{
				obj_game_control.current_type = SOLIDS
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for Solids!"
			}
			else if image_index >= 9 and image_index <= 15{
				obj_game_control.current_type = STRIPES
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for Stripes!"
			}
			else{
				//TODO you lose
			}
			obj_game_control.balls_pocketed += 1
		}
		//Putting in the eight ball ends the game
		if image_index == 8{
			if obj_game_control.current_type == EIGHT{
				obj_game_control.balls_pocketed += 1
			}
			//TODO End the game
		}
		else if obj_game_control.current_type == SOLIDS{
			//Add a ball to score only if correct
			if image_index >= 1 and image_index <= 7{
				obj_game_control.balls_pocketed += 1
			}
		}
		else if obj_game_control.current_type == STRIPES{
			if image_index >= 9 and image_index <= 15{
				obj_game_control.balls_pocketed += 1
			}
		}
		instance_destroy()
	}
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



