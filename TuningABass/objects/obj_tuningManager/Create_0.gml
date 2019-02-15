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

// pitch string's drone at appropriate pitch
dronePlaying = audio_play_sound(stringDrone, 15, true);
var pitchMultiplier = power((currentTuning / 50), pitchDifferenceMagnifier);
audio_sound_pitch(dronePlaying, pitchMultiplier);

// silence drone until player plucks string
audio_sound_gain(dronePlaying, 0, 0);

// if player has not yet seen the tuning controls note, show it to them
if (!global.seenTuningControls)
{
	instance_create_layer(512, 384, "SuperimposedNotesLayer", obj_tuningControlsNote);
	global.seenTuningControls = true;
}