image_speed = global.paused ? 0 : animationSpeed;
if (velocity.x > 0)
{
	image_xscale = 1;
}
else if (velocity.x < 0)
{
	image_xscale = -1;
}