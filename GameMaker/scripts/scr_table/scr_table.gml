function stc_entrance(_x, _y) constructor {
	x = _x
	y = _y
}

function get_entrance(include_pockets, include_houses) {
	// Pick an entrance from a sum array of possible options
	var possible_entrances = []
	
	// Pocket entrances
	if include_pockets {
		// Identify random entrance
		var border = TABLE_BORDER + GRID_SIZE/2
		// Starting at top left going right, then restarting at the bottom
		array_push(possible_entrances, new stc_entrance(border, border), 
				new stc_entrance(border + TABLE_WIDTH/2, border),
				new stc_entrance(border + TABLE_WIDTH - GRID_SIZE, border),
				new stc_entrance(border, border + TABLE_HEIGHT - GRID_SIZE),
				new stc_entrance(border + TABLE_WIDTH/2, border + TABLE_HEIGHT - GRID_SIZE),
				new stc_entrance(border + TABLE_WIDTH - GRID_SIZE, border + TABLE_HEIGHT - GRID_SIZE),
				)
	}
	
	// Structure entrances
	if include_houses {
		for (var i=0; i<instance_number(obj_structure); i++) {
			var Structure = instance_find(obj_structure, i)
			possible_entrances = array_concat(possible_entrances, Structure.entrances)
		}
	}
	
	// Choose entrances from list of whats possible
	// Ensure entrance is not blocked
	var entrance = possible_entrances[irandom(array_length(possible_entrances) - 1)]
	var tries = 0
	var max_tries = 8
	while collision_rectangle(entrance.x - GRID_SIZE/2, entrance.y - GRID_SIZE/2,
			entrance.x + GRID_SIZE/2, entrance.y + GRID_SIZE/2, all, false, false) and
			tries < max_tries {
		entrance = possible_entrances[irandom(array_length(possible_entrances) - 1)]
		tries ++
	}
	
	if tries < max_tries {
		return entrance
	}
	else {
		// Warning! No entrance found
		return pointer_null
	}
}

function move_avoiding(target_x, target_y, move_speed) {
	// Scale 2x to give wider bearth to obstacles
	image_xscale = 2
	image_yscale = 2
	if not place_free(x, y) {
		// Use normal size to avoid getting stuck
		image_xscale = 1
		image_yscale = 1
	}
	// Move avoiding
	mp_potential_step(target_x, target_y, move_speed, false)
	// Return to normal size
	image_xscale = 1
	image_yscale = 1
}