event_inherited();

if (global.paused || isStunned || dead)
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

localTime += DeltaTimeSeconds();

switch(movementType)
{
	case MovementType.Sine:
	{
		var alpha = localTime / movementPeriod * pi * 2;
		var beta = localTime / movementPeriodB * pi * 2;
		x = targetPosition.x + sin(alpha) * movementStrength;
		y = targetPosition.y + sin(beta) * movementStrengthB;
		break;
	}
	
	case MovementType.Circle:
	{
		var alpha = localTime / movementPeriod * pi * 2;
		x = targetPosition.x + cos(alpha) * movementStrength;
		y = targetPosition.y + sin(alpha) * movementStrength;
		break;
	}
	
	case MovementType.Line:
	{
		var alpha = localTime / movementPeriod * pi * 2;
		x = targetPosition.x + sin(alpha) * movementStrength;
	}
}