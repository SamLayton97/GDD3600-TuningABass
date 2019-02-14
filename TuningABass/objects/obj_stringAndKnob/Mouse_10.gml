/// @description When user mouses over knob

// swap standard sprite for highlighted sprite
if (sprite_index != myHighlightedSprite)
	sprite_index = myHighlightedSprite;
	
// play 'plucked string' sound effect at pitch appropriate to tuning
pitchMultiplier = power((myTuning / 50), .15);