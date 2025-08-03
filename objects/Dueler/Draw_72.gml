event_inherited();

if (playingOneShot)
{
	return;
}

if (grounded)
{
	sprite_index = Sp_DulerWalk;
}
else
{
	sprite_index = Sp_DulerFall;
}