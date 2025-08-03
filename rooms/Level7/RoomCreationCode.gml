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
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftDown, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftUp, 1);
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_right, 1, -1);
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 2, -1); //Helmer
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 3, -1);
spawner.AddSpawnerEntry(0, Swordsmin, fg_right, 4, -1); //Helmer
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftDown, 1);
spawner.AddSpawnerEntry(0, ArmoredEnemy, bg_leftUp, 1);

//Wave 2
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_lowerRight, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_rightDown, 1);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_right, 1);
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
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_leftUp, 1);
spawner.AddSpawnerEntry(2, Popper, bg_leftRight, 1);
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_leftDown, 1);
spawner.AddSpawnerEntry(2, Popper, bg_leftLeft, 1);
spawner.AddSpawnerEntry(2, Greatswordsmin, fg_left, 2, 1); //Dueler
spawner.AddSpawnerEntry(2, Greatswordsmin, fg_right, 2, -1); //Dueler

//Wave 4
spawner.AddSpawnerEntry(3, Popper, bg_leftLeft, 1);
spawner.AddSpawnerEntry(3, Popper, bg_lowerLeft, 2);
spawner.AddSpawnerEntry(3, Popper, bg_rightRight, 3);
spawner.AddSpawnerEntry(3, Popper, bg_lowerRight, 4);
spawner.AddSpawnerEntry(3, Greatswordsmin, fg_left, 2, 1); //Dueler
spawner.AddSpawnerEntry(3, Greatswordsmin, fg_right, 4, -1); //Dueler


//Wave 5
spawner.AddSpawnerEntry(4, Popper, bg_leftLeft, 1);
spawner.AddSpawnerEntry(4, Popper, bg_left, 1);
spawner.AddSpawnerEntry(4, Popper, bg_leftRight, 1);
spawner.AddSpawnerEntry(4, Popper, bg_middle, 1);
spawner.AddSpawnerEntry(4, Popper, bg_middleLeft, 1);
spawner.AddSpawnerEntry(4, Popper, bg_middleRight, 1);
spawner.AddSpawnerEntry(4, Popper, bg_rightLeft, 1);
spawner.AddSpawnerEntry(4, Popper, bg_right, 1);
spawner.AddSpawnerEntry(4, Popper, bg_rightRight, 1);

//Wave 6
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 1, 1);
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 2, 1);
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 3, 1); //Dueler
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 4, 1); //Helmer
spawner.AddSpawnerEntry(5, Bombito, fg_left, 5, 1);
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 6, 1);
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 7, 1); //Helmer
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 8, 1); //Helmer
spawner.AddSpawnerEntry(5, Bombito, fg_left, 9, 1);
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 10, 1);
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 11, 1);	//Helmer
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 12, 1); //Dueller


//Wave 7
spawner.AddSpawnerEntry(6, ArmoredEnemy, bg_left, 1);
spawner.AddSpawnerEntry(6, ArmoredEnemy, bg_middle, 1);
spawner.AddSpawnerEntry(6, ArmoredEnemy, bg_right, 1);

spawner.AddSpawnerEntry(6, Popper, bg_leftUp, 2);
spawner.AddSpawnerEntry(6, Popper, bg_middleUp, 2);
spawner.AddSpawnerEntry(6, Popper, bg_rightUp, 2);

spawner.AddSpawnerEntry(6, Popper, bg_leftDown, 3);
spawner.AddSpawnerEntry(6, Popper, bg_middleDown, 3);
spawner.AddSpawnerEntry(6, Popper, bg_rightDown, 3);