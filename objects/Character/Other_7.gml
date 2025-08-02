if (playingOneShot)
{
	if (cancelOneShot)
	{
		playingOneShot = false;
	}
	animationSpeed = cancelOneShot ? 1 : 0;
	oneShotCallback();
}