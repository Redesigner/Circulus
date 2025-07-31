if (global.paused)
{
	return;
}

if (!active)
{
	return;
}

currentLifetime += DeltaTimeSeconds();
if (currentLifetime > lifetime)
{
	SpawnHurtbox();
	instance_destroy(id);
}