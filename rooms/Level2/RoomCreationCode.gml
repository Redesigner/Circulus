var spawner = instance_create_layer(0, 0, "Game", Spawner);

spawner.AddSpawnPoint(95, 64);
spawner.AddSpawnPoint(160, 64);
spawner.AddSpawnPoint(225, 64);
spawner.AddSpawnPoint(40, 125);
spawner.AddSpawnPoint(275, 125);

//Wave 1
spawner.AddSpawnerEntry(0, TestEnemy, 2, 2);
spawner.AddSpawnerEntry(0, ArmoredEnemy, 0, 4);
spawner.AddSpawnerEntry(0, TestEnemy, 2, 6);
spawner.AddSpawnerEntry(0, ArmoredEnemy, 0, 4);

//Wave 2
spawner.AddSpawnerEntry(1, TestEnemy, 2, 2);
spawner.AddSpawnerEntry(1, ArmoredEnemy, 0, 4);
spawner.AddSpawnerEntry(1, TestEnemy, 2, 6);
spawner.AddSpawnerEntry(1, ArmoredEnemy, 0, 4);
spawner.AddSpawnerEntry(1, Swordsmin, 4, 8);

//Wave 3
spawner.AddSpawnerEntry(1, ArmoredEnemy, 0, 4);
spawner.AddSpawnerEntry(1, ArmoredEnemy, 0, 4);

