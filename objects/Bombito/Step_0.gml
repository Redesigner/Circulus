if (global.paused || isStunned || dead)
{
	return;
}

walkDirection = sign(target.x - x);

velocity.x = active ? 0 : walkSpeed * walkDirection;

if (!active)
{
	if (GetPositionVector(id).DistanceSquared(GetPositionVector(target)) < explosionDistance * explosionDistance)
	{
		active = true;
		timer = global.gameState.timerManager.Add(5, Explode, id);
	}
}

event_inherited();