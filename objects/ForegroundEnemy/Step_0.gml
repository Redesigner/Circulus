if (global.paused)
{
	return;
}

if (!canMove || isStunned)
{
	return;
}

var distance = target.x - x;
if (abs(distance) > 2)
{
	velocity.x = sign(distance) * 50;
}
else
{
	velocity.x = 0;
	if (!onCooldown)
	{
		FireLightning();
	}
}

event_inherited()