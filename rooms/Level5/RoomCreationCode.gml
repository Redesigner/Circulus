var spawner = instance_create_layer(0, 0, "Game", Spawner);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_leftUp = spawner.AddSpawnPoint(76, 64);
var bg_leftDown = spawner.AddSpawnPoint(126, 64);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_rightUp = spawner.AddSpawnPoint(370, 64);
var bg_rightDown = spawner.AddSpawnPoint(410, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpointsx
var fg_left = spawner.AddSpawnPoint(30, 185);
var fg_right = spawner.AddSpawnPoint(450, 185); 

//Wave 1
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_left, 1, 1);
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_right, 2, -1);
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_left, 3, 1);
spawner.AddSpawnerEntry(0, Greatswordsmin, fg_right, 4, -1);

//Wave 2
spawner.AddSpawnerEntry(1, Popper, bg_right, 2);
spawner.AddSpawnerEntry(1, Popper, bg_rightUp, 2);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 1, 1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_right, 2, -1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 3, 1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_right, 4, -1);

//Wave 3
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_leftUp, 2);
spawner.AddSpawnerEntry(2, Popper, bg_left, 2);
spawner.AddSpawnerEntry(2, Greatswordsmin, fg_left, 1, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 2, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 3, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 4, 1);
spawner.AddSpawnerEntry(2, ArmoredEnemy, bg_rightUp, 5);
spawner.AddSpawnerEntry(2, Popper, bg_right, 5);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 5, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 6, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 7, 1);
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 8, 1); //Helmer
spawner.AddSpawnerEntry(2, Diver, bg_middle, 8);

//Wave 4
spawner.AddSpawnerEntry(3, Popper, bg_left, 2);
spawner.AddSpawnerEntry(3, Popper, bg_middle, 4);
spawner.AddSpawnerEntry(3, Popper, bg_right, 6);
spawner.AddSpawnerEntry(3, Bombito, fg_left, 1, 1);
spawner.AddSpawnerEntry(3, Bombito, fg_right, 2, -1);
spawner.AddSpawnerEntry(3, Bombito, fg_left, 3, 1);
spawner.AddSpawnerEntry(3, Bombito, fg_right, 4, -1);
spawner.AddSpawnerEntry(3, Bombito, fg_left, 5, 1);
spawner.AddSpawnerEntry(3, Bombito, fg_right, 6, -1);
spawner.AddSpawnerEntry(2, Diver, bg_middle, 8);

//Wave 5
spawner.AddSpawnerEntry(4, Greatswordsmin, fg_left, 1, 1); //Dueler

//Wave 6
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 2, 1); //Dueler
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_right, 4, -1); //Dueler
spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 6, 1); //Dueler
