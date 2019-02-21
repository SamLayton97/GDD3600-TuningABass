/// @description Used for initialization

// retrieve player's final percentage
finalPercentage = global.ProgressPercent;

// play crowd cheering sound effect
audio_play_sound(sfx_crowdCheering, 10, false);

// determine qualitative sound of e string
eFeedback = "";
var eTune = global.eTune;
if (eTune >= 49.5 && eTune <= 50.5)
	eFeedback = "In tune!";
else if (eTune > 50.5 && eTune <= 55)
	eFeedback = "A hair too sharp";
else if (eTune > 55 && eTune <= 70)
	eFeedback = "Too sharp";
else if (eTune > 70)
	eFeedback = "Way too sharp!";
	
// determine qualitative sound of a string
aFeedback = "";
var aTune = global.aTune;
if (aTune >= 49.5 && aTune <= 50.5)
	aFeedback = "In tune!";
else if (aTune > 50.5 && aTune <= 55)
	aFeedback = "A hair too sharp";
else if (aTune > 55 && aTune <= 70)
	aFeedback = "Too sharp";
else if (aTune > 70)
	aFeedback = "Way too sharp!";
	
// determine qualitative sound of d string
dFeedback = "";
var dTune = global.dTune;
if (dTune >= 49.5 && dTune <= 50.5)
	dFeedback = "In tune!";
else if (dTune > 50.5 && dTune <= 55)
	dFeedback = "A hair too sharp";
else if (dTune > 55 && dTune <= 70)
	dFeedback = "Too sharp";
else if (dTune > 70)
	dFeedback = "Way too sharp!";
	
// determine qualitative sound of g string
gFeedback = "";
var gTune = global.gTune;
if (gTune >= 49.5 && gTune <= 50.5)
	gFeedback = "In tune!";
else if (gTune > 50.5 && gTune <= 55)
	gFeedback = "A hair too sharp";
else if (gTune > 55 && gTune <= 70)
	gFeedback = "Too sharp";
else if (gTune > 70)
	gFeedback = "Way too sharp!";