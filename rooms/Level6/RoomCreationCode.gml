var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_leftUp = spawner.AddSpawnPoint(96, 52);
var bg_leftDown = spawner.AddSpawnPoint(96, 76);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_middleUp = spawner.AddSpawnPoint(240, 52);
var bg_middleDown = spawner.AddSpawnPoint(240, 76);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_rightUp = spawner.AddSpawnPoint(370, 64);
var bg_rightDown = spawner.AddSpawnPoint(410, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpointsx
var fg_left = spawner.AddSpawnPoint(50, 50);
var fg_right = spawner.AddSpawnPoint(450, 50); 

//Wave 1
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 2);
spawner.AddSpawnerEntry(0, Popper, bg_leftUp, 2);
spawner.AddSpawnerEntry(0, Popper, bg_leftDown, 2);

spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_middle, 3);
spawner.AddSpawnerEntry(0, Popper, bg_middleUp, 3);
spawner.AddSpawnerEntry(0, Popper, bg_middleDown, 3);

spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_right, 4);
spawner.AddSpawnerEntry(0, Popper, bg_rightUp, 4);
spawner.AddSpawnerEntry(0, Popper, bg_rightDown, 4);

//Wave 2
spawner.AddSpawnerEntry(1, Diver, bg_left, 2);
spawner.AddSpawnerEntry(1, Diver, bg_right, 2);

//Wave 3
spawner.AddSpawnerEntry(2, Greatswordsmin, fg_right, 2, -1); //Helmer
spawner.AddSpawnerEntry(2, Diver, bg_lowerLeft, 2);
spawner.AddSpawnerEntry(2, Diver, bg_lowerRight, 2);

//Wave 4
spawner.AddSpawnerEntry(3, Greatswordsmin, fg_left, 1, 1);
spawner.AddSpawnerEntry(3, Greatswordsmin, fg_right, 1, -1);
spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_leftUp, 2);
spawner.AddSpawnerEntry(3, ArmoredEnemy, bg_leftDown, 2);

//Wave 4
spawner.AddSpawnerEntry(4, Diver, bg_left, 2);
spawner.AddSpawnerEntry(4, Diver, bg_right, 4);
spawner.AddSpawnerEntry(4, Diver, bg_middleUp, 2);
spawner.AddSpawnerEntry(4, Diver, bg_middleDown, 4);
spawner.AddSpawnerEntry(4, Popper, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(4, Popper, bg_lowerRight, 1);

