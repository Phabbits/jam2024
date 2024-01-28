/// @description Turn upon collision

//Create tiles

if x mod GRID_SIZE == 0.5 and y mod GRID_SIZE == 0.5 {
	// Mow
	var lay_id = layer_get_id("Tiles")
	var map_id = layer_tilemap_get_id(lay_id)
	var data = tilemap_get(map_id, 0, 0)
	tilemap_set(map_id, 1, x div GRID_SIZE, y div GRID_SIZE)

	// Check to switch direction
	if collision_point(x + lengthdir_x(GRID_SIZE, direction), y + lengthdir_y(GRID_SIZE, direction), all, false, true) {
		direction += 90
		image_angle = direction
	}
}

x += lengthdir_x(speed, direction)
y += lengthdir_y(speed, direction)