/// @description Called before room closes

// stop background music if playing
if (audio_is_playing(mus_TuningBackground))
	audio_stop_sound(mus_TuningBackground);
else if (audio_is_playing(mus_MenuBackground))
	audio_stop_sound(mus_MenuBackground);