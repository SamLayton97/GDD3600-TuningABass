/// @description Called once per frame

// retrieve string tuning and drone gain
var currTune = obj_tuningManager.currentTuning;
var droneVolume = audio_sound_get_gain(obj_tuningManager.dronePlaying);

// if string's sound is loud enough for tuner to read, show whether pitch is sharp, flat, or in tune
if (droneVolume >= minVolumeToRead)
{
	// if pitch is below 'hot zone' (<10 from perfect pitch)
	if (currTune < 30 && sprite_index != spr_electronicTunerFlat)
		// set tuner to show pitch as flat
		sprite_index = spr_electronicTunerFlat;
	// if pitch is above 'hot zone'
	else if (currTune > 70 && sprite_index != spr_electronicTunerSharp)
		// set tuner to show pitch as sharp
		sprite_index = spr_electronicTunerSharp;
	// if pitch is within 'hot zone' but just sharp of perfect
	else if (currTune >= 50.5 && currTune <= 70 && sprite_index != spr_electronicTunerSharpFlashing)
		// set tuner to show sharp and flash in tune
		sprite_index = spr_electronicTunerSharpFlashing;
	// if pitch is within 'hot zone' but just flat of perfect
	else if (currTune >= 30 && currTune <= 49.5 && sprite_index != spr_electronicTunerFlatFlashing)
		// set tuner to show flat and flash in tune
		sprite_index = spr_electronicTunerFlatFlashing;
	// and if pitch is in tune, set tuner to show 'in tune'
	else if (currTune > 49 && currTune < 51 && sprite_index != spr_electronicTunerInTune)
		sprite_index = spr_electronicTunerInTune;
}
// otherwise (sound is too quiet to read)
else if (droneVolume < minVolumeToRead && sprite_index != spr_electronicTuner)
{
	// set tuner to display nothing
	sprite_index = spr_electronicTuner;
}

// as player approaches perfectly tuned string, speed up animation
if (sprite_index == spr_electronicTunerFlatFlashing || sprite_index == spr_electronicTunerSharpFlashing)
{
	image_speed = 1.75 / abs(50 - currTune);
	//show_debug_message(string(image_speed));
}