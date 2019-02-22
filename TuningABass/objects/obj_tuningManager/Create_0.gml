/// @description When object is created

// read in current string to tune and initialize room according to its values
stringToTune = global.currString;
switch (stringToTune)
{
	case BassStrings.E:
		// set room to reflect E's current tuning
		currentTuning = global.eTune;
		tuningKnobRotationOffset = global.eKnobRotationOffset;
		stringDrone = sfx_eDrone;
		break;
	case BassStrings.A:
		currentTuning = global.aTune;
		tuningKnobRotationOffset = global.aKnobRotationOffset;
		stringDrone = sfx_aDrone;
		break;
	case BassStrings.D:
		currentTuning = global.dTune;
		tuningKnobRotationOffset = global.dKnobRotationOffset;
		stringDrone = sfx_dDrone;
		break;
	case BassStrings.G:
		currentTuning = global.gTune;
		tuningKnobRotationOffset = global.gKnobRotationOffset;
		stringDrone = sfx_gDrone;
		break;
}

// rotate tuning knob according to current tuning plus its respective offset
obj_tuningKnob.image_angle = currentTuning + tuningKnobRotationOffset;

// if player is in one of the tuning tutorial rooms
if (room == rm_TurningKnobTutorialRoom || room == rm_TuningTutorialRoom)
{
	// randomize current tuning to something outside 'tuned' range
	randomize();
	currentTuning = irandom_range(1, 100);
	while (currentTuning >= 35 && currentTuning <= 65)
		currentTuning = irandom_range(1, 100);
}

// pitch string's drone at appropriate pitch
dronePlaying = audio_play_sound(stringDrone, 15, true);
var pitchMultiplier = power((currentTuning / 50), pitchDifferenceMagnifier);
audio_sound_pitch(dronePlaying, pitchMultiplier);

// silence drone until player plucks string
audio_sound_gain(dronePlaying, 0, 0);

// if player is just learning to turn the knob, gradually increase string's volume
if (room == rm_TurningKnobTutorialRoom)
{
	// increase gain of drone at standard rate
	audio_sound_gain(dronePlaying, .8, ascendingGainTime);
}

// if in a tutorial room, spawn tutorial demos as appropriate
if (room == rm_PluckingStringTutorialRoom)
	instance_create_layer(global.screenWidth / 2, global.screenHeight / 2, 
		"TutorialUILayer", obj_strummingTutorialNote);
else if (room == rm_TurningKnobTutorialRoom)
	// spawn turning knob demo
	instance_create_layer(global.screenWidth / 2, global.screenHeight / 2,
		"TutorialUILayer", obj_turningKnobTutorialNote);
else if (room == rm_TuningTutorialRoom)
	// spawn full tuning demo
	show_debug_message("tuning");