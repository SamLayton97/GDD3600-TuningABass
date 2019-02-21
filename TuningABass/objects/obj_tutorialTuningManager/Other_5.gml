/// @description Called before room ends

// stop playing drone
audio_stop_sound(dronePlaying);

// before closing room, update current tuning of string
switch (stringToTune)
{
	case BassStrings.E:
		global.eTune = currentTuning;
		break;
	case BassStrings.A:
		global.aTune = currentTuning;
		break;
	case BassStrings.D:
		global.dTune = currentTuning;
		break;
	case BassStrings.G:
		global.gTune = currentTuning;
		break;
}