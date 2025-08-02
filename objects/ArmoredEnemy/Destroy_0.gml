/// @desc Tick Down a Spawner if one exists (MOVE TO onEnemyDestoryed FUNCTION LATER)

if (instance_exists(Spawner))
{
	with (Spawner)
	{
		if (triggered)
		{
			remaining[current_wave]--;
		}
	}
}