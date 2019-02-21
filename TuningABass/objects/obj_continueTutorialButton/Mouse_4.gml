/// @description When user clicks on button

// Inherit the parent event
event_inherited();

// if player isn't returning to tutorial, progress to next tutorial room
if (!global.tutorialCompleted)
{
	// go to the next tutorial room
	if (room == rm_PluckingStringTutorialRoom)
		room_goto(rm_TurningKnobTutorialRoom);
	else if (room == rm_TurningKnobTutorialRoom)
		room_goto(rm_TuningTutorialRoom);
	else if (room == rm_TuningTutorialRoom)
		room_goto(rm_BassRoom);
}
// otherwise, return to bass head room
else
	room_goto(rm_BassRoom);