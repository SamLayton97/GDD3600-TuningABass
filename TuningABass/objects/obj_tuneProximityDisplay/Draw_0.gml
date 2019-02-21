/// @description Draws information on object's layer

// draw progress counter background
draw_self();

// set font and alignment of strum counter
draw_set_font(fnt_tuneProximity);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// if tuner can hear drone, show how close player's string is to being 'in tune'
reading = "";
if (audio_sound_get_gain(obj_tuningManager.dronePlaying) > 0)
{
	// show reading appropriate to string's pitch
	var pitch = obj_tuningManager.currentTuning;
	if (pitch >= 49.5 && pitch <= 50.5)
		reading = "In tune";
	else if (pitch >= 45 && pitch < 49.5)
		reading = "Just flat";
	else if (pitch >= 30 && pitch < 45)
		reading = "Flat";
	else if (pitch < 30)
		reading = "Very flat";
	else if (pitch > 50.5 && pitch <= 55)
		reading = "Just sharp";
	else if (pitch > 55 && pitch <= 70)
		reading = "Sharp";
	else if (pitch > 70)
		reading = "Very sharp";
}
// otherwise (no drone playing), set reading to 'No sound'
else
	reading = "No sound";
	
// draw tune proximity's reading on top of panel
draw_text_color(x, y, "Reading: " + reading, c_lime, c_lime, c_lime, c_lime, 1);
