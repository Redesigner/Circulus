spawnedEnemyId = 0;
optionalDirection = 0;
callback = function() {};
callbackOwner = id;

SpawnEnemy = function()
{
	var spawnedEnemy = instance_create_layer(x, y, layer, spawnedEnemyId);
	if (optionalDirection != 0)
	{
		spawnedEnemy.walkDirection = optionalDirection;
	}
	spawnedEnemy.onDeath.Register(callbackOwner, callback);
	instance_destroy(id);
}

audio_play_sound(Sfx_PortalSpawn, 2, false);

spawnTimer = global.gameState.timerManager.Add(1, SpawnEnemy, id);