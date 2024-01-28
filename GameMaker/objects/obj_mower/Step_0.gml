/// @description Turn upon collision

//Create tiles

if (x - GRID_SIZE/2) mod GRID_SIZE == 0 and (y - GRID_SIZE/2) mod GRID_SIZE == 0 {
	// Mow
	var lay_id = layer_get_id("Tiles")
	var map_id = layer_tilemap_get_id(lay_id)
	var data = tilemap_get(map_id, 0, 0)
	tilemap_set(map_id, 1, x div GRID_SIZE, y div GRID_SIZE)

	// Check to switch direction
	if not place_empty(x + lengthdir_x(GRID_SIZE, direction), y + lengthdir_y(GRID_SIZE, direction)) {
		direction += 90
		image_angle = direction
	}
}

