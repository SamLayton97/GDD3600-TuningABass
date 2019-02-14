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
if (currentTuning < 0)
	currentTuning = 0;
else if (currentTuning > 100)
	currentTuning = 100;
	
// update knob's rotation according to new tuning
obj_tuningKnob.image_angle = currentTuning + tuningKnobRotationOffset;

show_debug_message(string(currentTuning));