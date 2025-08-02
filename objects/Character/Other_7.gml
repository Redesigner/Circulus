if (playingOneShot)
{
	playingOneShot = false;
	animationSpeed = cancelOneShot ? 1 : 0;
	oneShotCallback();
}