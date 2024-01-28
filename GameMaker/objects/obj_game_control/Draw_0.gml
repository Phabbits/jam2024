//Draw what type of ball you need to get in next
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
