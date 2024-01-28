/// @description Turn upon collision

//Create tiles

if (x - GRID_SIZE/2) mod GRID_SIZE == 0 and (y - GRID_SIZE/2) mod GRID_SIZE == 0 {
	// Mow
	var lay_id = layer_get_id("Tiles")
	var map_id = layer_tilemap_get_id(lay_id)
	var data = tilemap_get(map_id, 0, 0)
	tilemap_set(map_id, 1, x div GRID_SIZE, y div GRID_SIZE)
	
	//If making a u_turn, do that
	if u_turn{
		if turn_right{
			direction -= 90
		}
		else{
			direction += 90
		}
		image_angle = direction
		u_turn = false
		turn_right = not turn_right
	}

	// Check to switch direction
	var tries = 1
	var max_tries = 4
	while not place_empty(x + lengthdir_x(GRID_SIZE, direction), y + lengthdir_y(GRID_SIZE, direction)) and tries < max_tries {
		if turn_right{
			direction -= 90
		}
		else{
			direction += 90
		}
		image_angle = direction
		u_turn = true
		tries ++
	}
}

//Create grass particles
part_emitter_region(global.particle_system, global.emit_burst, x - lengthdir_x(4, direction), x - lengthdir_x(1, direction), y + lengthdir_y(3, direction), y + lengthdir_y(5, direction), ps_shape_rectangle, ps_distr_linear) //Set emitter region
part_type_direction(global.p_grass, direction + 220, direction + 280, 0, 0)
part_emitter_burst(global.particle_system, global.emit_burst, global.p_grass, 25)
