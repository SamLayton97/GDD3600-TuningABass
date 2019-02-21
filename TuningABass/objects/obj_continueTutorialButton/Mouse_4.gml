/// @description When user clicks on button

// Inherit the parent event
event_inherited();

// go to the next tutorial room (Currently returns to bass head room)
if (room == rm_PluckingStringTutorialRoom)
	room_goto(rm_turningKnobTutorialRoom);
else if (room == rm_turningKnobTutorialRoom)
	room_goto(rm_TuningString);