/// @description Draws information onto the screen

// set font and alignment of text
draw_set_font(fnt_bassHead);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw self and name of string (if appropriate)
draw_self();
if (stringName != "")
	draw_text_color(x, y, stringName, c_lime, c_lime, c_lime, c_lime, 1)
