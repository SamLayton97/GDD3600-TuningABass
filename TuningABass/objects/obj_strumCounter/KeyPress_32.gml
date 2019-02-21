/// @description Called when user presses 'Space'

// if player hasn't yet reached max number of strums needed to progress
if (currStrums < strumsToProgress)
{
	// increment strum count
	currStrums++;
	
	// set room's conditions to 'met' if player reached 3 strums
	if (currStrums == strumsToProgress) 
		requirementMet = true;
	
}