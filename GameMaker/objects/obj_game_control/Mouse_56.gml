/// @description Hit
// Fire ball based on dragged mouse
with selected_ball {
	var impact = point_distance(x, y, mouse_x, mouse_y)
	var dir = point_direction(x, y, mouse_x, mouse_y)
	next_direction = dir + 180
	next_speed = impact / 16
	drag_x = mouse_x
	drag_y = mouse_y
	selected_ball = noone
	other.current_player += 1
	if other.current_player == other.max_players {
		other.current_player = 0
		//for (var i=0; i<instance_number(obj_ball); i++
		with (obj_ball) {
			direction = next_direction
			speed = next_speed
			selected = false
			drag_x = 0
			drag_y = 0
		}
	}
}