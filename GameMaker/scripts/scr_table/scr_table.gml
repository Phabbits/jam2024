function stc_entrance(_x, _y) constructor {
	x = _x
	y = _y
}

function get_entrance() {
	// Identify random entrance
	var border = TABLE_BORDER + GRID_SIZE/2
	// Pick a pocket
	switch irandom(5) {
		case 0:
			// Top left
			return new stc_entrance(border, border)
		case 1:
			return new stc_entrance(border + TABLE_WIDTH/2, border)
		case 2:
			return new stc_entrance(border + TABLE_WIDTH - GRID_SIZE, border)
		case 3:
			// Bottom left
			return new stc_entrance(border, border + TABLE_HEIGHT - GRID_SIZE)
		case 4:
			return new stc_entrance(border + TABLE_WIDTH/2, border + TABLE_HEIGHT - GRID_SIZE)
		case 5:
			return new stc_entrance(border + TABLE_WIDTH - GRID_SIZE, border + TABLE_HEIGHT - GRID_SIZE)
			
	}
}

function move_avoiding(target_x, target_y, move_speed) {
	image_xscale = 2
	image_yscale = 2
	mp_potential_step(target_x, target_y, move_speed, false)
	image_xscale = 1
	image_yscale = 1
}