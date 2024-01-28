draw_set_color(c_white)
draw_set_font(fnt_title)
draw_set_halign(fa_middle)
draw_text(room_width div 2, room_height div 4, "Chaos on Cue")

draw_set_color(c_white)
draw_set_font(fnt_scores)
draw_set_halign(fa_left)

var x_align = 256
var y_align = 416
var spacing = 48
draw_text(x_align, y_align + spacing*0, "Click and drag on the white cue ball to hit it.")
draw_text(x_align, y_align + spacing*1, "Get all the stripes in, then all the solids, or vice versa.")
draw_text(x_align, y_align + spacing*2, "Get the eight ball in last!")
draw_text(x_align, y_align + spacing*4, "Left click to continue.")