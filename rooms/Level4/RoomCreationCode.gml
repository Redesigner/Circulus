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
var fg_left = spawner.AddSpawnPoint(48, 200);
var fg_right = spawner.AddSpawnPoint(415, 200); 


//Wave 1
spawner.AddSpawnerEntry(0, Popper, bg_right, 2);
spawner.AddSpawnerEntry(0, Popper, bg_left, 2);
spawner.AddSpawnerEntry(0, Popper, bg_up, 2);
spawner.AddSpawnerEntry(0, Popper, bg_down, 2);

//Wave 2
spawner.AddSpawnerEntry(1, Popper, bg_right, 2);
spawner.AddSpawnerEntry(1, Popper, bg_left, 2);
spawner.AddSpawnerEntry(1, Popper, bg_middle, 2);

spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 2, 1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 4, 1);
spawner.AddSpawnerEntry(1, Greatswordsmin, fg_left, 6, 1);

spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_up, 8);
spawner.AddSpawnerEntry(1, ArmoredEnemy, bg_down, 8);

spawner.AddSpawnerEntry(1, Bombito, fg_right, 12, -1);

//Wave 3
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 2, 1); //Helmer
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 3, 1); //Helmer
spawner.AddSpawnerEntry(2, Swordsmin, fg_left, 4, 1); //Helmer

//Wave 4
spawner.AddSpawnerEntry(3, Diver, bg_left, 2);

//Wave 5
spawner.AddSpawnerEntry(4, Diver, bg_left, 2);
spawner.AddSpawnerEntry(4, Diver, bg_right, 4);
spawner.AddSpawnerEntry(4, Popper, bg_lowerLeft, 1);
spawner.AddSpawnerEntry(4, Popper, bg_lowerRight, 1);

//Wave 6
spawner.AddSpawnerEntry(5, Swordsmin, fg_right, 1, -1); //Helmer
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 1, 1);	//Helmer

//Wave 7
spawner.AddSpawnerEntry(6, Bombito, fg_right, 2, -1);
spawner.AddSpawnerEntry(6, Bombito, fg_left, 4, 1);
spawner.AddSpawnerEntry(6, ArmoredEnemy, bg_left, 2);
spawner.AddSpawnerEntry(6, ArmoredEnemy, bg_right, 2);