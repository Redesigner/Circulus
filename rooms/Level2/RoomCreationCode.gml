var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(95, 64);
var bg_middle = spawner.AddSpawnPoint(160, 64);
var bg_right = spawner.AddSpawnPoint(225, 64);
var bg_up = spawner.AddSpawnPoint(160, 30);
var bg_down = spawner.AddSpawnPoint(160, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(64, 96); 
var bg_lowerRight = spawner.AddSpawnPoint(255, 95); 

//Foreground Spawnpoints
var fg_left = spawner.AddSpawnPoint(40, 125);
var fg_right = spawner.AddSpawnPoint(275, 125); 




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