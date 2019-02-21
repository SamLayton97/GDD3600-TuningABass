/// @description Draws information to the screen

// draw display sprite
draw_self();

// set font and alignment
draw_set_font(fnt_finalScore);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw player's final percentage and judgement
draw_text_color(x, y - 150, "Your jam rocked ...", c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x, y - 120, string(finalPercentage) + "%", c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x, y - 90, overallPerformance, c_lime, c_lime, c_lime, c_lime, 1);
	
// draw judgement breakdown for each string
draw_text_color(x, y - 30, "Breakdown", c_lime, c_lime, c_lime, c_lime, 1);
draw_set_font(fnt_finalScoreSmall);
draw_set_halign(fa_left);
draw_text_color(x - 200, y + 10, "E String: " + eFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 40, "A String: " + aFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 70, "D String: " + dFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 100, "G String: " + gFeedback, c_lime, c_lime, c_lime, c_lime, 1);