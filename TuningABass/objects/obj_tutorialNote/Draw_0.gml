/// @description Draws self and pertinent information to screen

// set font and alignment of text
draw_set_font(fnt_tutorialNote);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

// draw text box
draw_self();

// draw note's message to screen and instructions to close it
//draw_text_ext_color(x, y - (boxHeight * .2), myMessage, stringHeight, boxWidth * .85,
	//c_lime, c_lime, c_lime, c_lime, 1);
draw_text_ext_color(x, y + 130, "Press 'Space' to close.", stringHeight, boxWidth * .85,
	c_red, c_red, c_red, c_red, 1);