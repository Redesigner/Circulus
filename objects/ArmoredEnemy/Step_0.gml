if (global.paused || isStunned)
{
	return;
}

localTime += DeltaTimeSeconds();
var sinFactor = sin(localTime);
sinFactor = sign(sinFactor) * power(abs(sinFactor), 0.8);
// x = targetPosition.x + clamp(sinFactor * 120, -100, 100);
// y = targetPosition.y + sin(localTime * 5) * 20;

x = targetPosition.x + cos(localTime * 5) * 20;
y = targetPosition.y + sin(localTime * 5) * 20;

event_inherited();