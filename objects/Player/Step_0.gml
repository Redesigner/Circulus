var input = InputAxis(ord("D"), ord("A"));
if (abs(input) < 0.1)
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
velocity.x = clamp(velocity.x + input * acceleration * DeltaTimeSeconds(), -maxSpeed, maxSpeed);

velocity.y -= 98 * DeltaTimeSeconds();
event_inherited()