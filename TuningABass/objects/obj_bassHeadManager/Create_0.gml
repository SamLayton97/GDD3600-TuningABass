/// @description Used for initialization

// DEBUGGING: print current tunings of each string
//show_debug_message(string(global.eTune) + " " + string(global.aTune) + " " + string(global.dTune) + " " + string(global.gTune));

// when player first enters game, welcome them and begin tutorial
if (!global.playerWelcomed)
{
	instance_create_layer(global.screenWidth / 2, global.screenHeight / 2, "TutorialUILayer", obj_welcomeTutorialNote);
	global.playerWelcomed = true;
}