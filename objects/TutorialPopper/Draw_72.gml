event_inherited()

if (playingOneShot)
{
	return;
}

if (fireTimerCurrent / fireTimer > 0.5)
{
	if (sprite_index != Sp_PopperAttacking)
	{
		image_index = 0;
		sprite_index = Sp_PopperAttacking;
	}
}
else
{
	sprite_index = Sp_Popper;
}