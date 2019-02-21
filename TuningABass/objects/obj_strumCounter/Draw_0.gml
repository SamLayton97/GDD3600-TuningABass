/// @description Draws information on object's layer

// draw progress counter background
draw_self();

// set font and alignment of strum counter
draw_set_font(fnt_strumProgress);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw player's current number of required strums
draw_text_color(x, y, "Strums: " + string(currStrums) + "/" + string(strumsToProgress),
	c_lime, c_lime, c_lime, c_lime, 1);