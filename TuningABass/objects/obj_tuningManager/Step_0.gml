/// @description Called once per frame

// if player holds 'A'
if (keyboard_check(ord("A")))
{
	// increment string's tune by rate
	currentTuning += tuningRate;
}
// if player holds 'D'
else if (keyboard_check(ord("D")))
{
	// decrement string's tune by rate
	currentTuning -= tuningRate;
}

// if necessary, clamp string's tune within acceptable value range (0 - 100)
if (currentTuning < tuningRangeLowerBound)
	currentTuning = tuningRangeLowerBound;
else if (currentTuning > tuningRangeUpperBound)
	currentTuning = tuningRangeUpperBound;
	
// update knob's rotation according to new tuning
obj_tuningKnob.image_angle = currentTuning + tuningKnobRotationOffset;

// adjust drone's pitch to current tuning
var newPitchMultiplier = power((currentTuning / 50), pitchDifferenceMagnifier);
audio_sound_pitch(dronePlaying, newPitchMultiplier);

// if player is isn't just learning to turn knobs (plucking is disabled) and if gain of drone hits max (1)
if (room != rm_TurningKnobTutorialRoom && audio_sound_get_gain(dronePlaying) >= 1)
{
	// begin decreasing its volume over time
	audio_sound_gain(dronePlaying, 0, descendingGainTime);
}