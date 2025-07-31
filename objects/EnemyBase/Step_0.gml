event_inherited();

if (global.paused)
{
	return;
}

fireTimerCurrent += DeltaTimeSeconds();
if (fireTimerCurrent > fireTimer)
{
	FireBullet();
	
	fireTimerCurrent = 0;
	fireTimer = random_range(fireRateMin, fireRateMax);
}