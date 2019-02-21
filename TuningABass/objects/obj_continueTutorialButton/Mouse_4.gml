/// @description When user clicks on button

// Inherit the parent event
event_inherited();

// go to the next tutorial room (Currently returns to bass head room)
if (room == rm_PluckingStringTutorialRoom)
	room_goto(rm_TurningKnobTutorialRoom);
else if (room == rm_TurningKnobTutorialRoom)
	room_goto(rm_TuningTutorialRoom);
else if (room == rm_TuningTutorialRoom)
	room_goto(rm_BassRoom);