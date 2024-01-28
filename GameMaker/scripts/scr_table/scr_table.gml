function stc_entrance(_x, _y) constructor {
	x = _x
	y = _y
}

function get_entrance() {
	// Identify random entrance
	var border = TABLE_BORDER + GRID_SIZE + GRID_SIZE/2
	// Pick a pocket
	switch irandom(5) {
		case 0:
			// Top left
			return new stc_entrance(border, border)
		case 1:
			return new stc_entrance(border + TABLE_WIDTH/2, border)
		case 2:
			return new stc_entrance(border + TABLE_WIDTH - GRID_SIZE*2, border)
		case 3:
			// Bottom left
			return new stc_entrance(border, border + TABLE_HEIGHT - GRID_SIZE*2)
		case 4:
			return new stc_entrance(border + TABLE_WIDTH/2, border + TABLE_HEIGHT - GRID_SIZE*2)
		case 5:
			return new stc_entrance(border + TABLE_WIDTH - GRID_SIZE*2, border + TABLE_HEIGHT - GRID_SIZE*2)
			
	}
}
