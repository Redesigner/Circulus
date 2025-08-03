var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_leftUp = spawner.AddSpawnPoint(96, 42);
var bg_leftDown = spawner.AddSpawnPoint(96, 86);
var bg_leftRight = spawner.AddSpawnPoint(140, 64);
var bg_leftLeft = spawner.AddSpawnPoint(52, 64);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_middleUp = spawner.AddSpawnPoint(240, 42);
var bg_middleDown = spawner.AddSpawnPoint(240, 86);
var bg_middleLeft = spawner.AddSpawnPoint(196, 64);
var bg_middleRight = spawner.AddSpawnPoint(284, 64);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_rightUp = spawner.AddSpawnPoint(390, 20);
var bg_rightDown = spawner.AddSpawnPoint(390, 108);
var bg_rightRight = spawner.AddSpawnPoint(434, 64);
var bg_rightLeft = spawner.AddSpawnPoint(346, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpointsx
var fg_left = spawner.AddSpawnPoint(20, 180);
var fg_right = spawner.AddSpawnPoint(450, 175); 

//Wave 1
spawner.AddSpawnerEntry(0, CloudEnemy, bg_right, 1);

spawner.AddSpawnerEntry(0, TestEnemy, bg_left, 10);
spawner.AddSpawnerEntry(0, TestEnemy, bg_right, 10);

spawner.AddSpawnerEntry(0, TestEnemy, bg_rightLeft, 15);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 15);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_right, 15);
spawner.AddSpawnerEntry(0, TestEnemy, bg_leftRight, 15);

spawner.AddSpawnerEntry(0, TestEnemy, bg_rightRight, 20);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftUp, 20);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_rightDown, 20);
spawner.AddSpawnerEntry(0, TestEnemy, bg_leftLeft, 20);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_up, 20);
spawner.AddSpawnerEntry(0, TestEnemy, bg_down, 20);

spawner.AddSpawnerEntry(0, TestEnemy, bg_leftLeft, 25);
spawner.AddSpawnerEntry(0, TestEnemy, bg_leftRight, 25);
spawner.AddSpawnerEntry(0, TestEnemy, bg_middleLeft, 25);
spawner.AddSpawnerEntry(0, TestEnemy, bg_middleRight, 25);
spawner.AddSpawnerEntry(0, TestEnemy, bg_rightLeft, 25);
spawner.AddSpawnerEntry(0, TestEnemy, bg_rightRight, 25);