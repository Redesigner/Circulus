var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpoints
var fg_left = spawner.AddSpawnPoint(30, 205);
var fg_right = spawner.AddSpawnPoint(450, 190); 


//Wave 1
spawner.AddSpawnerEntry(0, TestEnemy, bg_right, 2);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 4);
spawner.AddSpawnerEntry(0, TestEnemy, bg_right, 6);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 4);

//Wave 2
spawner.AddSpawnerEntry(1, TestEnemy, bg_right, 2);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_left, 4);
spawner.AddSpawnerEntry(1, TestEnemy, bg_right, 6);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_left, 4);
spawner.AddSpawnerEntry(1, Swordsmin, fg_right, 8);

//Wave 3
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_left, 2);
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_right, 2);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 4, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_right, 4, -1);

//Wave 4
spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_left, 2);
spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_right, 2);
spawner.AddSpawnerEntry(3, TestEnemy, bg_lowerLeft, 2);
spawner.AddSpawnerEntry(3, TestEnemy, bg_lowerRight, 2);

spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_up, 8);
spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_down, 8);
spawner.AddSpawnerEntry(3, TestEnemy, bg_right, 8);
spawner.AddSpawnerEntry(3, TestEnemy, bg_left, 8);

//Wave 5
spawner.AddSpawnerEntry(4, Bombito, fg_right, 3);

//Wave 6
spawner.AddSpawnerEntry(5, ArmoredEnemy, bg_left, 2);
spawner.AddSpawnerEntry(5, ArmoredEnemy, bg_right, 2);
spawner.AddSpawnerEntry(5, TestEnemy, bg_lowerLeft, 2);
spawner.AddSpawnerEntry(5, TestEnemy, bg_lowerRight, 2)

spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 4, 1);

spawner.AddSpawnerEntry(5, ArmoredEnemy, bg_left, 8);
spawner.AddSpawnerEntry(5, ArmoredEnemy, bg_right, 8);
spawner.AddSpawnerEntry(5, TestEnemy, bg_lowerLeft, 8);
spawner.AddSpawnerEntry(5, TestEnemy, bg_lowerRight, 8);

spawner.AddSpawnerEntry(5, Swordsmin, fg_right, 4, -1);