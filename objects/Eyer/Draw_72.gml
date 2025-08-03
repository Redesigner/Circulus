event_inherited()

if (playingOneShot)
{
	return;
}

if (isStunned)
{
	sprite_index = Sp_EyerHit;
	return;
}

if (fireTimerCurrent / fireTimer > 0.5)
{
	if (sprite_index != Sp_EyerAttack)
	{
		image_index = 0;
		sprite_index = Sp_EyerAttack;
	}
}
else
{
	sprite_index = Sp_Eyer;
}