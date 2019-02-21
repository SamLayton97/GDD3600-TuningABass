/// @description Called once per frame

// if tutorial room's condition has been met and continue button hasn't yet spawned
if (requirementMet && !instance_exists(obj_continueTutorialButton))
{
	// spawn continue button at designated spawn position
	instance_create_layer(continueButtonX, continueButtonY, "LowerUILayer", obj_continueTutorialButton);
}