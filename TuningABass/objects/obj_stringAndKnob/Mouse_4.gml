/// @description Called when user clicks on a string / knob

// if string is enabled
if (enabled)
{
	// set string to currently tune to this object's string
	global.currString = myString;

	// play auditory confirmation of press
	audio_play_sound(sfx_buttonPress, 4, false);

	// go to the tuning room
	room_goto(rm_TuningString);
}
// otherwise (string is disabled for duration of tutorial),
else
{
	// play 'denied' sound effect
	audio_play_sound(sfx_disabledButton, 4, false);
}