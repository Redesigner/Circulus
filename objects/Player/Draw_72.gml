event_inherited();

if (grounded && !playingOneShot)
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

playerDrawingSprite.image_xscale = image_xscale;