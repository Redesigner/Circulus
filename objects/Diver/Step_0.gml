if (global.paused || isStunned)
{
	return;
}

localTime += DeltaTimeSeconds();
z = 0.5 + sin(localTime) / 2;

x = lerp(startingPosition.x, target.x, z);
y = lerp(startingPosition.y, target.y, z);

event_inherited();