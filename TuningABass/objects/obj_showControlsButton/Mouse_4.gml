/// @description When user clicks on button

// Inherit the parent event
event_inherited();

// create instance of controls panel if none exist
if (!instance_exists(obj_controlsDisplay))
{
	// create panel at center of screen
	instance_create_layer(global.screenWidth / 2, global.screenHeight / 2, "UILayer", obj_controlsDisplay);
}