/// @description Used for initialization

// set the animation speed of the tuner (used for when it flashes)
image_speed = 10 / room_speed;

// set tuner to display letter corresponding to string player is tuning
stringToTune = obj_tuningManager.stringToTune;
switch (stringToTune)
{
	case BassStrings.E:
		stringName = "E";
		break;
	case BassStrings.A:
		stringName = "A";
		break;
	case BassStrings.D:
		stringName = "D";
		break;
	case BassStrings.G:
		stringName = "G";
		break;
	default:
		stringName = "err";
		break;
}