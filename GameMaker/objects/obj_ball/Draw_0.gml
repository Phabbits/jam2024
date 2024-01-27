/// @description Draw ball and dragged line
draw_self()
if selected {
	draw_set_color(c_red)
	if drag_x != 0 and drag_y != 0 {
		draw_line_width(x, y, drag_x, drag_y, 4)
	}
	else {
		draw_line_width(x, y, mouse_x, mouse_y, 4)
	}
}