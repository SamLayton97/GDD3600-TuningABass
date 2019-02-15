/// @description Draws information to the screen

// draw display sprite
draw_self();

// set font and alignment
draw_set_font(fnt_finalScore);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw player's final percentage
draw_text_color(x, y - 50, "Your jam rocked ...", c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x, y, string(finalPercentage) + "%", c_lime, c_lime, c_lime, c_lime, 1);

// draw text casting judgement on player's jam
if (finalPercentage > 95)
	draw_text_color(x, y + 50, "... and is was perfect!", c_lime, c_lime, c_lime, c_lime, 1);
else if (finalPercentage > 90)
	draw_text_color(x, y + 50, "... and is was good.", c_lime, c_lime, c_lime, c_lime, 1);
else
	draw_text_color(x, y + 50, "... and it wasn't bad.", c_lime, c_lime, c_lime, c_lime, 1);