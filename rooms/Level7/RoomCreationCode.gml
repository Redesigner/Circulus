var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_leftUp = spawner.AddSpawnPoint(96, 42);
var bg_leftDown = spawner.AddSpawnPoint(96, 86);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_middleUp = spawner.AddSpawnPoint(240, 42);
var bg_middleDown = spawner.AddSpawnPoint(240, 86);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_rightUp = spawner.AddSpawnPoint(370, 64);
var bg_rightDown = spawner.AddSpawnPoint(410, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpointsx
var fg_left = spawner.AddSpawnPoint(20, 180);
var fg_right = spawner.AddSpawnPoint(450, 175); 

//Wave 1
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftDown, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftUp, 1);
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_right, 2, -1);
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 4, -1); //Helmer
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 8, -1);
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 12, -1); //Helmer
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftDown, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftUp, 1);

//Wave 2
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_lowerRight, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_rightDown, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_rightUp, 1);
spawner.AddSpawnerEntry(1, Bombito, fg_left, 6, 1);
spawner.AddSpawnerEntry(1, Bombito, fg_left, 8, 1);
spawner.AddSpawnerEntry(1, Bombito, fg_left, 10, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_middle, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_middleUp, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_middleDown, 1);
spawner.AddSpawnerEntry(1, Bombito, fg_right, 12, -1);
spawner.AddSpawnerEntry(1, Bombito, fg_right, 14, -1);
spawner.AddSpawnerEntry(1, Bombito, fg_right, 16, -1);

//Wave 3


/*//Wave 1
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_middle, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_right, 1);

spawner.AddSpawnerEntry(0, TestEnemy, bg_leftUp, 2);
spawner.AddSpawnerEntry(0, TestEnemy, bg_middleUp, 2);
spawner.AddSpawnerEntry(0, TestEnemy, bg_rightUp, 2);

spawner.AddSpawnerEntry(0, TestEnemy, bg_leftDown, 3);
spawner.AddSpawnerEntry(0, TestEnemy, bg_middleDown, 3);
spawner.AddSpawnerEntry(0, TestEnemy, bg_rightDown, 3);
*/