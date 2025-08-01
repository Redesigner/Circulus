event_inherited();

// Override
Circle = function()
{
	if (isStunned)
	{
		TakeDamage(1.0);
	}
}

// Override
Slash = function()
{
	Stun(3.0);
}

// Override
Tap = function()
{
	Stun(4.0);
}