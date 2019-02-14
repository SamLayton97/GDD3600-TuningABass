/// @description When user mouses over button

// swap standard sprite for highlighted sprite
if (sprite_index != myHighlightedSprite)
{
	sprite_index = myHighlightedSprite;
	mousedOver = true;
}

// play button highlight sound
audio_play_sound(sfx_buttonHighlight, 5, false);
