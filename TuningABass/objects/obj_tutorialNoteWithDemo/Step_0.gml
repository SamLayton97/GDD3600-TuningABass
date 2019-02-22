/// @description Called once per frame

// if frame counter hits max
if (demoFrameCounter > framesPerSubframe)
{
	// increment subimage of demo sprite and loop it if necessary
	currSubimage++;
	if (currSubimage > numOfSubimages - 1)
		currSubimage = 0;
		
	// reset counter
	demoFrameCounter = 0;
}

// increment counter
demoFrameCounter++;