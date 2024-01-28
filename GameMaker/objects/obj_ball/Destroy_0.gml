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
			room_goto_next()
		}
		obj_game_control.balls_pocketed += 1
	}
		
	//Count the number of balls of each type
	var solid_num = 0
	var stripe_num = 0
	var eight_balls = 0
	for (var i=0; i<instance_number(obj_ball); i++){
		var Inst = instance_find(obj_ball, i)
		if Inst.image_index >= 1 and Inst.image_index <= 7{
			solid_num += 1
		}
		else if Inst.image_index >= 9 and Inst.image_index <= 15{
			stripe_num += 1
		}
		else if Inst.image_index == 8{
			eight_balls += 1
		}
	}
	
	//Putting in the eight ball ends the game
	if image_index == 8{
		if obj_game_control.current_type == EIGHT{
			obj_game_control.balls_pocketed += 1
		}
		room_goto_next()
	}
		
	else if obj_game_control.current_type == SOLIDS{
		//Add a ball to score only if correct
		if image_index >= 1 and image_index <= 7{
			obj_game_control.balls_pocketed += 1
		}
		//If the ball just pocketed was the last one left, go for stripes
		if solid_num == 1{
			//Check to see if any stripes are left
			if stripe_num > 0{
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for Stripes!"
				obj_game_control.current_type = STRIPES
			}
			//If no stripes check for eight ball
			else if eight_balls > 0{
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for the Eight Ball!"
				obj_game_control.current_type = EIGHT
			}
		}
				
	}
	else if obj_game_control.current_type == STRIPES{
		if image_index >= 9 and image_index <= 15{
			obj_game_control.balls_pocketed += 1
		}
		//If the ball just pocketed was the last one left, go for solids
		if stripe_num == 1{
			//Check to see if any stripes are left
			if solid_num > 0{
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for Solids!"
				obj_game_control.current_type = SOLIDS
			}
			//If no stripes check for eight ball
			else if eight_balls > 0{
				//Set alarm for display
				obj_game_control.alarm[0] = 150
				obj_game_control.type_text = "Go for the Eight Ball!"
				obj_game_control.current_type = EIGHT
			}
		}
	}
}

