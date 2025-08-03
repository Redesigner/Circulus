var spawner = instance_create_layer(0, 0, "Game", Spawner);
layer_set_visible("Hud", true);

//Background Spawnpoints
var bg_left = spawner.AddSpawnPoint(96, 64);
var bg_middle = spawner.AddSpawnPoint(240, 64);
var bg_right = spawner.AddSpawnPoint(390, 64);
var bg_up = spawner.AddSpawnPoint(240, 30);
var bg_down = spawner.AddSpawnPoint(240, 80);
var bg_lowerLeft = spawner.AddSpawnPoint(63, 78);
var bg_lowerRight = spawner.AddSpawnPoint(450, 130);

//Foreground Spawnpoints
var fg_left = spawner.AddSpawnPoint(60, 220);
var fg_right = spawner.AddSpawnPoint(430, 220); 

//Wave 1
spawner.AddSpawnerEntry(0, Popper, bg_left, 1);

//Wave 2
spawner.AddSpawnerEntry(1, Popper, bg_left, 2);
spawner.AddSpawnerEntry(1, Popper, bg_right, 4);
spawner.AddSpawnerEntry(1, Popper, bg_left, 6);
	
//Wave 3
spawner.AddSpawnerEntry(2, Eyer, bg_up, 0);

//Wave 4
spawner.AddSpawnerEntry(3, Popper, bg_left, 2);
spawner.AddSpawnerEntry(3, Eyer, bg_middle, 2);
spawner.AddSpawnerEntry(3, Popper, bg_right, 2);

spawner.AddSpawnerEntry(3, Swordsmin, fg_right, 8, -1);

//Wave 5
spawner.AddSpawnerEntry(4, Eyer, 1, 2);
spawner.AddSpawnerEntry(4, Eyer, 3, 2);

spawner.AddSpawnerEntry(4, Swordsmin, fg_left, 4, 1);
spawner.AddSpawnerEntry(4, Swordsmin, fg_right, 6,-1);

//Wave 6
spawner.AddSpawnerEntry(5, Eyer, bg_left, 2);
spawner.AddSpawnerEntry(5, Eyer, bg_right, 2);

spawner.AddSpawnerEntry(5, Greatswordsmin, fg_left, 4, 1);
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 5, 1);
spawner.AddSpawnerEntry(5, Swordsmin, fg_left, 6, 1);

