function stc_entrance(_x, _y) constructor {
	x = _x
	y = _y
}

function get_entrance() {
	return new stc_entrance(TABLE_BORDER*2, TABLE_BORDER*2)
}
