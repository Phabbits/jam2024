/// @description Speech Bubble
draw_self()
if instance_exists(self){
	if show_speech_happy{
		draw_sprite(spr_text_bubble, 0, x + 8, y - 8)
	}
	else if show_speech_build{
		draw_sprite(spr_text_bubble, 1, x + 8, y - 8)
	}
}

