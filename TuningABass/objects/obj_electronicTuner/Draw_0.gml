/// @description Draws string name onto tuner's display

// set font and alignment of tuner's text display
draw_set_font(fnt_electronicTuner);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw self and string name
draw_self();
draw_text_color(x, y - 43, stringName, c_lime, c_lime, c_lime, c_lime, 1);