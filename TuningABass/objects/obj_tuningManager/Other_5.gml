/// @description Called before room ends

// stop drone playing
audio_stop_sound(dronePlaying);


// if current room is either final tutorial room or standard tuning room
if (room == rm_TuningTutorialRoom || room == rm_TuningString)
{
	// update current tuning of string before closing room
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
}