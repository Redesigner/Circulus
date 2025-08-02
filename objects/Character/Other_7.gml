if (playingOneShot)
{
	if (cancelOneShot)
	{
		playingOneShot = false;
	}
	image_index = sprite_get_number(sprite_index) - 1;
	animationSpeed = cancelOneShot ? 1 : 0;
	oneShotCallback();
}