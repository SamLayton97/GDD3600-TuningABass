/// @description Draw info to the screen

// set text font and alignment
draw_set_font(fnt_bassHead);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw self and progress towards jam
draw_self();
draw_text_color(x, y - 20, "Tune: " + string(jamPercentage) + "%", c_lime, c_lime, c_lime, c_lime, 1);

// display progress of e string (denoted by color of letter)
if (eProgress >= 24)
	draw_text_color(x - 45, y + 20, "E", c_lime, c_lime, c_lime, c_lime, 1);
else if (eProgress >= 20)
	draw_text_color(x - 45, y + 20, "E", c_green, c_green, c_green, c_green, 1);
else
	draw_text_color(x - 45, y + 20, "E", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	
// display progress of a string (denoted by color of letter)
if (aProgress >= 24)
	draw_text_color(x - 15, y + 20, "A", c_lime, c_lime, c_lime, c_lime, 1);
else if (eProgress >= 20)
	draw_text_color(x - 15, y + 20, "A", c_green, c_green, c_green, c_green, 1);
else
	draw_text_color(x - 15, y + 20, "A", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	
// display progress of d string (denoted by color of letter)
if (dProgress >= 24)
	draw_text_color(x + 15, y + 20, "D", c_lime, c_lime, c_lime, c_lime, 1);
else if (dProgress >= 20)
	draw_text_color(x + 15, y + 20, "D", c_green, c_green, c_green, c_green, 1);
else
	draw_text_color(x + 15, y + 20, "D", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	
// display progress of d string (denoted by color of letter)
if (gProgress >= 24)
	draw_text_color(x + 45, y + 20, "G", c_lime, c_lime, c_lime, c_lime, 1);
else if (gProgress >= 20)
	draw_text_color(x + 45, y + 20, "G", c_green, c_green, c_green, c_green, 1);
else
	draw_text_color(x + 45, y + 20, "G", c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);