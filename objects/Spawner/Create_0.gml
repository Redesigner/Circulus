/// @desc Set up

triggered = false;
timer = 0;
currentWave = 0;
totalWaves = 0;
currentEnemyKillCount = 0;

waves = array_create(0);

spawnPoints = array_create(0);

/// @param {Real} _x
/// @param {Real} _y
AddSpawnPoint = function(_x, _y)
{
	array_push(spawnPoints, new Vector2(_x, _y));
	return array_length(spawnPoints) - 1;
}

/// @param {Real} wave
/// @param {Asset.GMObject} type
/// @param {Real} spawnPointIndex
/// @param {Real} delay
AddSpawnerEntry = function(wave, type, spawnPointIndex, delay, _direction = 0)
{
	var arrayLength = array_length(waves);
	if (arrayLength >= wave)
	{
		// If our waves array is too small, resize it with new empty arrays
		for (var i = arrayLength; i <= wave; ++i)
		{
			array_push(waves, array_create(0));
			totalWaves = wave;
		}
	}
	
	array_push(waves[wave], new SpawnerEntry(type, spawnPointIndex, delay, _direction));
}

SkipWave = function()
{
	var enemies = layer_get_all_elements("Enemies");
	array_foreach(enemies, function(enemy, index)
		{
			var enemyInstance = layer_instance_get_instance(enemy);
			if (object_is_ancestor(enemyInstance.object_index, EnemyBase))
			{
				enemyInstance.TakeDamage(100);
			}
		});
		
	if (currentWave < totalWaves - 1)
	{
		++currentWave;
		currentEnemyKillCount = 0;
		triggered = false;
		timer = 0;
	}
}