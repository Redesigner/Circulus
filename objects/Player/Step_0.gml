var input = InputAxis(ord("D"), ord("A"));
if (abs(input) < 0.1)
{
	if (grounded)
	{
		if (velocity.x > 0)
		{
			velocity.x = max(velocity.x - deceleration * DeltaTimeSeconds(), 0);
		}
		else
		{
			velocity.x = min(velocity.x + deceleration * DeltaTimeSeconds(), 0);
		}
	}
}
else
{
	var appliedAccelration = input * acceleration;
	if (!grounded)
	{
		appliedAccelration *= airControlFactor;
	}
	velocity.x = clamp(velocity.x + appliedAccelration * DeltaTimeSeconds(), -maxSpeed, maxSpeed);
}

velocity.y -= 98 * DeltaTimeSeconds();
event_inherited()