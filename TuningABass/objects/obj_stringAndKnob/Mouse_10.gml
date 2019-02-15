/// @description When user mouses over knob

// swap standard sprite for highlighted sprite
if (sprite_index != myHighlightedSprite)
	sprite_index = myHighlightedSprite;
	
// play 'plucked string' sound effect at pitch appropriate to tuning
pitchMultiplier = power((myTuning / 50), .15);
var pluckSound = audio_play_sound(myPluckedSound, 10, false);
audio_sound_pitch(pluckSound, pitchMultiplier);

// set string display object to write out name of this string
switch (myString)
{
	case BassStrings.E:
		obj_stringDisplay.stringName = "E String";
		break;
	case BassStrings.A:
		obj_stringDisplay.stringName = "A String";
		break;
	case BassStrings.D:
		obj_stringDisplay.stringName = "D String";
		break;
	case BassStrings.G:
		obj_stringDisplay.stringName = "G String";
		break;
	default:
		obj_stringDisplay.stringName = "";
		break;
}