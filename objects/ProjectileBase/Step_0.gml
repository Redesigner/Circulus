if (global.paused)
{
	return;
}

currentLifetime += DeltaTimeSeconds();
if (currentLifetime > duration)
{
	SpawnHurtbox();
	instance_destroy(id);
}