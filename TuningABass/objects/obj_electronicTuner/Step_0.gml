/// @description Called once per frame

// retrieve current string tuning
var currTune = obj_tuningManager.currentTuning;

// if pitch is below 'hot zone' (<10 from perfect pitch)
if (currTune < 45 && sprite_index != spr_electronicTunerFlat)
	// set tuner to show pitch as flat
	sprite_index = spr_electronicTunerFlat;
// if pitch is above 'hot zone'
else if (currTune > 55 && sprite_index != spr_electronicTunerSharp)
	// set tuner to show pitch as sharp
	sprite_index = spr_electronicTunerSharp;
// if pitch is within 'hot zone' but just sharp of perfect
else if (currTune >= 51 && currTune < 55 && sprite_index != spr_electronicTunerSharpFlashing)
	// set tuner to show sharp and flash in tune
	sprite_index = spr_electronicTunerSharpFlashing;
// if pitch is within 'hot zone' but just flat of perfect
else if (currTune <= 49 && sprite_index != spr_electronicTunerFlatFlashing)
	// set tuner to show flat and flash in tune
	sprite_index = spr_electronicTunerFlatFlashing;
// and if pitch is in tune, set tuner to show 'in tune'
else if (currTune > 49 && currTune < 51 && sprite_index != spr_electronicTunerInTune)
	sprite_index = spr_electronicTunerInTune;