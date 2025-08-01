if (global.paused || isStunned)
{
	return;
}

/*
var deltaX = target.x - x;
velocity.x = sign(deltaX) * 20;
*/

velocity.y -= fallSpeed * DeltaTimeSeconds();

event_inherited();

if (y > room_height + 100)
{
	TakeDamage(10)
}