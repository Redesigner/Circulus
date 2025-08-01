if (global.paused)
{
	return;
}

var deltaX = target.x - x;
velocity.x = sign(deltaX) * 20;

event_inherited();