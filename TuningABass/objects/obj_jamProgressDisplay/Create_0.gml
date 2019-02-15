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

// if player's tune progress is at least 80%, allow them to Jam!
if (jamPercentage >= 80)
	instance_create_layer(512, 152, "ForegroundObjects", obj_jamButton);

// if player hasn't yet seen objective but has seen intro
if (!global.seenObjetive && global.seenIntroduction)
{
	// if player has seen the intro and successfully tuned at least one string, show objective note
	if (eProgress >= 20 || aProgress >= 20 || dProgress >= 20 || gProgress >= 20)
	{
		instance_create_layer(516, 384, "UILayer", obj_objectiveNote);
		global.seenObjetive = true;
		show_debug_message("show objective");
	}
	// otherwise (failed to tune last string before seeing objective, show a reminder to tune
	else
	{
		instance_create_layer(516, 384, "UILayer", obj_tryAgainNote);
		show_debug_message("show try again");
	}
}

// if player has not yet seen intro tutorial note, show it to them
if (!global.seenIntroduction)
{
	instance_create_layer(516, 384, "UILayer", obj_introTutorialNote);
	global.seenIntroduction = true;
}

