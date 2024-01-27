/// @description Pick a plot
// Set by optional struct
//blueprint = pointer_null

// Marker object reserves the space from other planners
Marker = noone
// No path returns as -1
path = -1

// Speeds
walk_speed = 1
run_speed = 2

#region Pick open plot

// Try an x and y position within the table aligned to the center of the grid
var try_x = TABLE_BORDER + irandom((TABLE_WIDTH - TABLE_BORDER*2) / GRID_SIZE)*GRID_SIZE + GRID_SIZE/2
var try_y = TABLE_BORDER + irandom((TABLE_HEIGHT - TABLE_BORDER*2) / GRID_SIZE)*GRID_SIZE + GRID_SIZE/2
// Count tries
var max_tries = 10
var tries = 0
// Half blueprint width and height for centering
var hw = blueprint.width / 2
var hh = blueprint.height / 2

// Iterate through random positions until place for plot is found or max tries
while tries < max_tries
		and collision_rectangle(try_x - hw, try_y - hh, try_x + hw, try_y + hh, all, false, false) {
	// Try and x and y position within the table aligned to the center of the grid
	try_x = TABLE_BORDER + irandom((TABLE_WIDTH - TABLE_BORDER*2) / GRID_SIZE)*GRID_SIZE + GRID_SIZE/2
	try_y = TABLE_BORDER + irandom((TABLE_HEIGHT - TABLE_BORDER*2) / GRID_SIZE)*GRID_SIZE + GRID_SIZE/2
	// Increment tries
	tries ++
}

if tries == max_tries {
	// No open plot was found!
}
else {
	// Open plot found
	// Create marker, scale to size of blueprint
	Marker = instance_create_layer(try_x, try_y, "Instances", obj_marker, {
		image_xscale : blueprint.width / GRID_SIZE,
		image_yscale : blueprint.height / GRID_SIZE,
	})
	
	// Create path to plot using best guess at current state, max four tries
	path = path_add()
	mp_potential_path(path, Marker.x, Marker.y, 1, 4, true)
	
	// Start down path
	path_start(path, walk_speed, path_action_stop, false)
}

#endregion