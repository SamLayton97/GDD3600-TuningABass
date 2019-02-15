/// @description Draw info to the screen

// set text font and alignment
draw_set_font(fnt_bassHead);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw self and progress towards jam
draw_self();
draw_text_color(x, y - 20, "Tune: " + string(jamPercentage) + "%", c_lime, c_lime, c_lime, c_lime, 1);

// TODO: draw progress of individual strings