function DeltaTimeSeconds()
{
	return min(delta_time / 1000000, 0.5);
}