event_inherited();

if (active)
{
	var alpha = timer.ElapsedTimePercent();
	image_speed = 2 * alpha * alpha;
	sprite_index = Sp_BombitoExplode;
}
else
{
	image_speed = 1;
	sprite_index = grounded ? Sp_Bombito : Sp_BombitoFall;
}