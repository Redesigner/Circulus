// If the game is paused, none of the step code will execute, because of this return statement
if (global.paused)
{
	return;
}

//Increase timer by the the number of seconds passed since out last step
timer+= DeltaTimeSeconds();

if (currentWave > totalWaves)
{
	instance_destroy();
	global.gameState.Victory();
}

// Iterate through each entry in our waves list
array_foreach(waves[currentWave], function(entry, index)
	{
		if (entry.delay < timer && !entry.spawned)
		{
			// Only 'Trigger' our wave once we've spawned the first enemy
			triggered = true;
			
			SpawnEnemy(entry);
		}
	});
	
//Next wave or end of spawner when all enemies have died
if (currentEnemyKillCount == array_length(waves[currentWave]) && triggered)
{
	if (currentWave == totalWaves)
	{
		instance_destroy();
		global.gameState.Victory();
	}
	else
	{
		++currentWave;
		currentEnemyKillCount = 0;
		triggered = false;
		timer = 0;
	}
}