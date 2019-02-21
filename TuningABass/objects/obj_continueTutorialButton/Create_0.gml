/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// play 'success' sound
audio_play_sound(sfx_buttonPress, 10, false);

// if player has completed tutorial and is returning for refresher, change message
if (global.tutorialCompleted)
	myMessage = "Return";

// if player completed final tutorial room, change message and font, and set tutorial to complete
if (room == rm_TuningTutorialRoom)
{
	myMessage = "End Tutorial";
	myFont = fnt_buttonsVerySmall;
	global.tutorialCompleted = true;
}