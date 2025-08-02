// If the game is paused, none of the step code will execute, because of this return statement
if (global.paused)
{
	return;
}

//Increase timer by the the number of seconds passed since out last step
timer+= DeltaTimeSeconds();

// Iterate through each entry in our waves list
array_foreach(waves[currentWave], function(entry, index)
	{
		if (entry.delay < timer && !entry.spawned)
		{
			// Only 'Trigger' our wave once we've spawned the first enemy
			triggered = true;
			
			// Read our spawnPoint from the list
			var spawnPoint = spawnPoints[entry.spawnPointIndex];
			var newlySpawnedEnemy = instance_create_layer(spawnPoint.x, spawnPoint.y, "Enemies", entry.type);
			entry.spawned = true;
			
			// Register a function to our delegate! When our enemy dies, it will call this function below,
			// and increase our currentEnemyKillCount by 1
			newlySpawnedEnemy.onDeath.Register(id, function() { ++currentEnemyKillCount; });
			if (entry.walkDirection != 0)
			{
				newlySpawnedEnemy.walkDirection = entry.walkDirection;
			}
		}
	});
	
//Next wave or end of spawner when all enemies have died
if (currentEnemyKillCount == array_length(waves[currentWave]) && triggered)
{
	if (currentWave == totalWaves)
	{
		instance_destroy();
		//
		//Victory Screen and Level Transition
		//
	}
	else
	{
		++currentWave;
		currentEnemyKillCount = 0;
		triggered = false;
		timer = 0;
	}
}