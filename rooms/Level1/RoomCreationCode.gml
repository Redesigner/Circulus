//[wave, type, spawnpoint, delay]

waves = ds_list_create();
	
//Wave 1
ds_list_add(waves,[0, TestEnemy, 0, 0]);
ds_list_add(waves,[0, TestEnemy, 0, 50]);
ds_list_add(waves,[0, TestEnemy, 0, 100]);
ds_list_add(waves,[0, TestEnemy, 1, 50]);
ds_list_add(waves,[0, TestEnemy, 1, 100]);
ds_list_add(waves,[0, TestEnemy, 1, 100]);
	
//Wave 2
ds_list_add(waves,[1, TestEnemy, 0, 10]);
ds_list_add(waves,[1, TestEnemy, 0, 20]);
ds_list_add(waves,[1, TestEnemy, 0, 30]);
ds_list_add(waves,[1, TestEnemy, 0, 40]);
ds_list_add(waves,[1, TestEnemy, 0, 50]);
ds_list_add(waves,[1, TestEnemy, 0, 60]);
	
//Wave 3
ds_list_add(waves,[3, ArmoredEnemy, 1, 0]);
	
//Spawn Point 1
spawn[0, 0] = 95; //x position
spawn[0, 1] = 64; //y position

//Spawn Point 2
spawn[0, 0] = 225;//x position
spawn[0, 1] = 64; //y position