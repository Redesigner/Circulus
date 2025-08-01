if (global.paused)
{
	return;
}

if (isStunned)
{
	return;
}

localTime += DeltaTimeSeconds();

followTargetPosition = variable_clone(targetPosition);
followTargetPosition.y += sin(localTime / 20 * randomYFactor) * randomYFactor;
followTargetPosition.x += sin(localTime / 20 * randomXFactor) * randomXFactor;

x = followTargetPosition.x;
y = followTargetPosition.y;

event_inherited();