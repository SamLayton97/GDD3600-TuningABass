/// @description Called once per frame

// read current volume of string drone
var stringVolume = audio_sound_get_gain(obj_tuningManager.dronePlaying);

// if string's sound is audible, set animation speed of string to match it
if (stringVolume > 0)
{
	image_speed = stringVolume * room_speed;
}
// otherwise (inaudible), lock string's animation of first frame
else
{
	image_index = 0;
	image_speed = 0;
}