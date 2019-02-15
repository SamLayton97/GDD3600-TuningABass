/// @description When user's mouse leaves knob

// swap highlighted sprite back to standard sprite
if (sprite_index != myStandardSprite)
	sprite_index = myStandardSprite;
	
// set string display object to display nothing
obj_stringDisplay.stringName = "";