/// @description Used for initialization

// initialized enabled/disabled flag
enabled = true;

// if player hasn't yet finished tutorial and object doesn't represent E string
if (!global.tutorialCompleted && myString != BassStrings.E)
{
	// disable string
	enabled = false;
}