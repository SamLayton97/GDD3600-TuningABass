/// @description Called once per frame

// if tuner's current reading is in tune, increment counter
if (reading == "In tune" && tuneHoldCounter < minHoldFrames)
	tuneHoldCounter++;
// otherwise, reset counter
else
	tuneHoldCounter = 0;

// if counter hits minumum time to hold tune, set requirement of tutorial to 'met'
if (tuneHoldCounter >= minHoldFrames)
	requirementMet = true;

// inherit parent's condition-meeting step event
event_inherited();