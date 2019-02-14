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