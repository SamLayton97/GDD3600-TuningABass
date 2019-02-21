/// @description Used for initialization

// set background music appropriate for given room
if (room == rm_TuningString || room == rm_PluckingStringTutorialRoom || room == rm_turningKnobTutorialRoom)
{
	audio_play_sound(mus_TuningBackground, 4, true);
}
else
{
	audio_play_sound(mus_MenuBackground, 4, true);
}
