/// @description Used for initialization

// initialize player's percent progress and retrieve current tunings of each string
jamPercentage = 0;
var currETune = global.eTune;
var currATune = global.aTune;
var currDTune = global.dTune;
var currGTune = global.gTune;

// calculate progress towards jam from each of the strings
eProgress = 25 - (abs(50 - currETune) / 2);
aProgress = 25 - (abs(50 - currATune) / 2);
dProgress = 25 - (abs(50 - currDTune) / 2);
gProgress = 25 - (abs(50 - currGTune) / 2);
jamPercentage = eProgress + aProgress + dProgress + gProgress;

// if player has completed tutorial
if (global.tutorialCompleted)
{
	// allow them to jam!
	instance_create_layer(512, 152, "ForegroundObjects", obj_jamButton);
	
	// allow them to return to earlier tutorial sections
	instance_create_layer(864, 624, "BackgroundObjects", obj_returnToTutorialPanel);
	instance_create_layer(864, 576, "ForegroundObjects", obj_returnToStrumTutorial);
	instance_create_layer(864, 640, "ForegroundObjects", obj_returnToKnobTutorial);
	instance_create_layer(864, 704, "ForegroundObjects", obj_returnToTuningTutorial);
}