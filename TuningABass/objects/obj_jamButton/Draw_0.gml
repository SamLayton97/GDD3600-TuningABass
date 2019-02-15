/// @description Draws Jam! button base and text to screen

// set font and alignment of text
draw_set_font(myFont);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// draw self and info to screen
draw_self();
if (!mousedOver)
	draw_text_color(x, y, myMessage, c_lime, c_lime, c_lime, c_lime, 1);
else
	draw_text_color(x, y, myMessage, c_black, c_black, c_black, c_black, 1);