var spawner = instance_create_layer(0, 0, "Game", Spawner);

spawner.AddSpawnPoint(95, 64);
spawner.AddSpawnPoint(160, 64);
spawner.AddSpawnPoint(225, 64);
spawner.AddSpawnPoint(40, 125);
spawner.AddSpawnPoint(275, 125);

//Wave 1
spawner.AddSpawnerEntry(0, TestEnemy, 0, 1);

//Wave 2
spawner.AddSpawnerEntry(1, TestEnemy, 1, 2);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 4);
spawner.AddSpawnerEntry(1, TestEnemy, 1, 6);
	
//Wave 3
spawner.AddSpawnerEntry(2, ArmoredEnemy, 0, 0);

//Wave 4
spawner.AddSpawnerEntry(3, TestEnemy, 0, 2);
spawner.AddSpawnerEntry(3, ArmoredEnemy, 1, 2);
spawner.AddSpawnerEntry(3, TestEnemy, 2, 2);

spawner.AddSpawnerEntry(3, Swordsmin, 4, 10);
