/// @desc Set up

triggered = false;
timer = 0;
currentWave = 0;
totalWaves = 2;
currentEnemyKillCount = 0;

waves = array_create(0);

spawnPoints = array_create(0);

/// @param {Real} _x
/// @param {Real} _y
AddSpawnPoint = function(_x, _y)
{
	array_push(spawnPoints, new Vector2(_x, _y));
}

/// @param {Real} wave
/// @param {Asset.GMObject} type
/// @param {Real} spawnPointIndex
/// @param {Real} delay
AddSpawnerEntry = function(wave, type, spawnPointIndex, delay)
{
	var arrayLength = array_length(waves);
	if (arrayLength >= wave)
	{
		// If our waves array is too small, resize it with new empty arrays
		for (var i = arrayLength; i <= wave; ++i)
		{
			array_push(waves, array_create(0));
		}
	}
	
	array_push(waves[wave], new SpawnerEntry(type, spawnPointIndex, delay));
}