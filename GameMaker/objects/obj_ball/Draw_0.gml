/// @description Draw ball and dragged line
draw_self()
if selected {
	draw_set_color(c_red)
	if not cue_moving{
		draw_sprite_ext(spr_cue_stick, 0 , mouse_x, mouse_y, 1, 1, point_direction(contact_x, contact_y, mouse_x, mouse_y), c_white, 1)
	}
	else{
		draw_sprite_ext(spr_cue_stick, 0 , cue_x, cue_y, 1, 1, point_direction(contact_x, contact_y, cue_x, cue_y), c_white, 1)
	}
}









