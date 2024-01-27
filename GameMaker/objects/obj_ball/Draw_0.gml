/// @description Draw ball and dragged line
draw_self()
if selected {
	draw_set_color(c_red)
	draw_line(x, y, mouse_x, mouse_y)
}