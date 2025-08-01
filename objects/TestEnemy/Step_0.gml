if (global.paused)
{
	return;
}

if (isStunned)
{
	return;
}

followTargetPosition = variable_clone(targetPosition);
followTargetPosition.y += sin(current_time / 2000 * randomYFactor) * randomYFactor;
followTargetPosition.x += sin(current_time / 2000 * randomXFactor) * randomXFactor;

event_inherited();