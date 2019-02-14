/// @description Called before room closes

// stop background music if playing
if (audio_is_playing(mus_GameBackground))
	audio_stop_sound(mus_GameBackground);
else if (audio_is_playing(mus_MenuBackground))
	audio_stop_sound(mus_MenuBackground);