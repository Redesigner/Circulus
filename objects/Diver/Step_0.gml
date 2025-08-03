if (global.paused || isStunned)
{
	return;
}

if (divingTimer)
{
	z = sin(divingTimer.ElapsedTimePercent() * pi);
	var scale = z / 2 + 0.5;
	image_xscale = scale;
	image_yscale = scale;
	canCollide = z > 0.8;
	depth = startingDepth - z;
}

x = lerp(startingPosition.x, targetPosition.x, z);
y = lerp(startingPosition.y, targetPosition.y, z);

event_inherited();