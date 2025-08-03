var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(95, 64);
var bg_middle = spawner.AddSpawnPoint(160, 64);
var bg_right = spawner.AddSpawnPoint(225, 64);
var bg_upperLeft = spawner.AddSpawnPoint(63, 46);
var bg_upperRight = spawner.AddSpawnPoint(270, 46);
var bg_up = spawner.AddSpawnPoint(160, 30);
var bg_down = spawner.AddSpawnPoint(160, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(64, 96); 
var bg_lowerRight = spawner.AddSpawnPoint(255, 95); 

//Foreground Spawnpoints
var fg_left = spawner.AddSpawnPoint(80, 120);
var fg_right = spawner.AddSpawnPoint(272, 140); 

//Wave 1
spawner.AddSpawnerEntry(0, TestEnemy, bg_right, 2);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 4);
spawner.AddSpawnerEntry(0, TestEnemy, bg_up, 4);
spawner.AddSpawnerEntry(0, TestEnemy, bg_right, 6);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 8);
spawner.AddSpawnerEntry(0, TestEnemy, bg_down, 8);


//Wave 2
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 2, 1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_right, 2, -1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_upperLeft, 8);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_upperRight, 8);

