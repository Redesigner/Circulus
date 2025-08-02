var spawner = instance_create_layer(0, 0, "Game", Spawner);


spawner.AddSpawnPoint(95, 64);
spawner.AddSpawnPoint(160, 64);
spawner.AddSpawnPoint(225, 64);


spawner.AddSpawnPoint(40, 125);
spawner.AddSpawnPoint(275, 125); 


spawner.AddSpawnPoint(64, 96); 
spawner.AddSpawnPoint(255, 95); 

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
spawner.AddSpawnerEntry(2, ArmoredEnemy, 0, 2);
spawner.AddSpawnerEntry(2, ArmoredEnemy, 2, 2);
spawner.AddSpawnerEntry(2, Swordsmin, 3, 4);
spawner.AddSpawnerEntry(2, Swordsmin, 4, 4);

//Wave 4
spawner.AddSpawnerEntry(3, ArmoredEnemy, 0, 2);
spawner.AddSpawnerEntry(3, ArmoredEnemy, 2, 2);
spawner.AddSpawnerEntry(3, TestEnemy, 5, 2);
spawner.AddSpawnerEntry(3, TestEnemy, 6, 2);

spawner.AddSpawnerEntry(3, ArmoredEnemy, 0, 8);
spawner.AddSpawnerEntry(3, ArmoredEnemy, 2, 8);
spawner.AddSpawnerEntry(3, TestEnemy, 5, 8);
spawner.AddSpawnerEntry(3, TestEnemy, 6, 8);

//Wave 5
spawner.AddSpawnerEntry(4, Bombito, 4, 4);
