if (global.paused)
{
	return;
}

currentTime += DeltaTimeSeconds();
if (currentTime > duration)
{
	instance_destroy(id);
}