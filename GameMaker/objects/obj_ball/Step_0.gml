if place_meeting(x, y, obj_pocket){
	//If you get in the cue ball, subtract a point and take it out
	if image_index == 0{
		obj_game_control.balls_pocketed -= 1
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
			}
			else if image_index >= 9 and image_index <= 15{
				obj_game_control.current_type = STRIPES
			}
			else{
				//TODO you lose
			}
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




