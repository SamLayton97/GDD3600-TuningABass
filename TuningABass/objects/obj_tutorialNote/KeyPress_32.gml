/// @description When user presses 'Space', close note

// NOTE: children of this object will adjust certain values before destroying themselves

// play closing sound and destroy note
audio_play_sound(sfx_buttonPress, 4, false);
instance_destroy(id);