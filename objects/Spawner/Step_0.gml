/// @desc Spawn Things

if (triggered)
{
	//Check the list for enemies that are ready to spawn and if they are the right wave/time spawn them!
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var next = ds_list_find_value(waves, i)
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer)
		{
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Enemies", next[_TYPE]);
		}
	}
	
	//Increase timer
	timer++;
	
	//Next wave or end of spawner when all enemies have died
	if (remaining[current_wave] <= 0)
	{
		if (current_wave == total_waves)
		{
			instance_destroy();
			//
			//Victory Screen and Level Transition
			//
		}
		else
		{
			current_wave++;
			timer = 0;
		}
	}
}