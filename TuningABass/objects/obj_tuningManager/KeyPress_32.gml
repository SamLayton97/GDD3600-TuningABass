/// @description When user presses 'Space' - strum string key

// if player isn't just learning to turn knobs (plucking string matters)
if (room != rm_TurningKnobTutorialRoom)
{
	// if drone sound's volume is not near max (1)
	var currVolume = audio_sound_get_gain(dronePlaying)
	if (currVolume < .90)
	{
		// increase gain of drone at standard rate
		ascendingTime = (1 - currVolume) * ascendingGainTime;
		audio_sound_gain(dronePlaying, 1, ascendingTime);
	}
}