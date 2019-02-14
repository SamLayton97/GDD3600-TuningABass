/// @description Used for initialization

// set background music appropriate for given room
if (room == rm_TuningString || room == rm_BassRoom)
{
	audio_play_sound(mus_GameBackground, 4, true);
}
else
{
	audio_play_sound(mus_MenuBackground, 4, true);
}
