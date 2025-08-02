event_inherited();

if (grounded)
{
	if (abs(velocity.x) < 1)
	{
		sprite_index = Sp_PlayerIdle;
	}
	else
	{
		sprite_index = Sp_PlayerWalk;
	}
}