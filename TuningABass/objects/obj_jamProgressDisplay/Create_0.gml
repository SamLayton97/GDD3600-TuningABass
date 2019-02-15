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

// if player's tune progress is at least 85%, allow them to Jam!
if (jamPercentage >= 85)
	instance_create_layer(512, 152, "ForegroundObjects", obj_jamButton);