/// @desc Trigger the wave spawner at the begining of a room load

//If the wave hasn't triggered yet, trigger it
if (triggered == false)
{
	triggered = true;
	
	//Work out number of waves and enemies per wave
	total_waves = -1;
	waves = 0;
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var thisentry = ds_list_find_value(waves, i);
		if (thisentry[_WAVE] > total_waves) //Cycle through list to see if any of them have a wave higher than current total of waves and then keep increasing it
		{
			//Handles remaining enemies. Once you've defeated more than what's in that wave, you're in a new wave.
			total_waves++;
			remaining[total_waves] = 0;
		}
		
		//Count what enemies are remaining in the wave
		remaining[total_waves]++;
	}
}