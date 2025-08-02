var spawner = instance_create_layer(0, 0, "Game", Spawner);

spawner.AddSpawnPoint(95, 64);
spawner.AddSpawnPoint(225, 64);

spawner.AddSpawnerEntry(0, Swordsmin, 0, 0, 1);
spawner.AddSpawnerEntry(0, TestEnemy, 0, 10);
	
//Wave 2
spawner.AddSpawnerEntry(1, TestEnemy, 0, 10);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 20);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 30);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 40);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 50);
spawner.AddSpawnerEntry(1, TestEnemy, 0, 60);