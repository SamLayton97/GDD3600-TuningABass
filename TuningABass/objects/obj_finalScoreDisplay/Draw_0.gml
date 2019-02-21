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
draw_text_color(x, y - 40, "Breakdown", c_lime, c_lime, c_lime, c_lime, 1);
draw_set_font(fnt_finalScoreSmall);
draw_set_halign(fa_left);
draw_text_color(x - 200, y, "E String: " + eFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 30, "A String: " + aFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 60, "D String: " + dFeedback, c_lime, c_lime, c_lime, c_lime, 1);
draw_text_color(x - 200, y + 90, "G String: " + gFeedback, c_lime, c_lime, c_lime, c_lime, 1);

// draw feedback notes below performance breakdown
draw_text_ext_color(x - 200, y + 165, "Notes: " + feedbackNotes, feedbackStringHeight * .6, boxWidth * 0.8,
	c_lime, c_lime, c_lime, c_lime, 1);