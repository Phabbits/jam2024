if room == Room1{
	//Draw what type of ball you need to get in next
	draw_set_halign(fa_left)
	draw_set_font(fnt_normal)
	draw_set_color(c_white)
	var text_x = 96
	var text_y = 8
	switch current_type{
		case SOLIDS:
			draw_text(text_x, text_y, "Go for Solids!")
			break
		case STRIPES:
			draw_text(text_x, text_y, "Go for Stripes!")
			break
		case EIGHT:
			draw_text(text_x, text_y, "Go for the Eight Ball!")
			break
		default:
			draw_text(text_x, text_y, "Hit a ball in.")
			break
	}

	var text_x = 96
	var text_y = 24
	draw_text(text_x, text_y, "Balls pocketed: " + string(balls_pocketed))

	var text_x = 288
	var text_y = 8
	draw_text(text_x, text_y, "# of hits: " + string(num_hits))

	var text_x = 288
	var text_y = 24
	draw_text(text_x, text_y, "Squashed: " + string(people_squashed))

	if type_text != - 1{
		draw_set_color(c_black)
		draw_set_font(fnt_notify)
		draw_set_halign(fa_middle)
		draw_text(room_width div 2, room_height div 2, type_text)
	}
}
if room == rm_end{
	//Draw scores
	draw_set_color(c_white)
	draw_set_font(fnt_notify)
	draw_set_halign(fa_middle)
	draw_text(room_width div 2, room_height div 4, "Game Over!")
	
	var x_align = 256
	var y_align = 384
	var spacing = 48
	draw_set_color(c_white)
	draw_set_font(fnt_scores)
	draw_set_halign(fa_left)
	draw_text(x_align, y_align + spacing*0, "Balls Pocketed: " + string(balls_pocketed))
	draw_text(x_align, y_align + spacing*1, "Number of Hits: " + string(num_hits))
	draw_text(x_align, y_align + spacing*2, "Minis Squashed: " + string(people_squashed))
}