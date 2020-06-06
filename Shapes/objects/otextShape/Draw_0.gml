draw_set_font(tieude);
draw_set_colour($FF000000 & $ffffff);
var color_shifted=($FF000000 >> 24);
draw_set_alpha(color_shifted / $ff);

draw_text(515 - string_width("SHAPES AROUND US")/2 + 100, 150,  + string("SHAPES AROUND US"));