event_inherited();

if (global.paused || isStunned)
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

var delta = followTargetPosition.Minus(GetPositionVector(id));
delta.Normalize();
delta.MultiplyReal(acceleration * DeltaTimeSeconds());
delta.y = -delta.y;
velocity.Add(delta);
velocity.ClampLength(maxSpeed);