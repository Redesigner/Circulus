drawing = false;
resetRequested = false;
currentDrawValue = 0;
scaleFactor = 8;

previousMousePosition = new Vector2();
canvas = surface_create(room_width, room_height, surface_rgba8unorm);
collisionChecker = new DrawingGrid(ceil(room_width / scaleFactor), ceil(room_height / scaleFactor));

DrawLine = function(startPosition, endPosition, radius)
{
	drawDirection = endPosition.Minus(startPosition);
	var distance = drawDirection.Length();
	drawDirection.Normalize();
	
	for (var i = 0; i < distance; ++i)
	{
		var drawPosition = variable_clone(startPosition);
		drawPosition.Add(drawDirection.TimesReal(i));
		draw_circle(drawPosition.x, drawPosition.y, radius, false);
	}
}

CloseLoop = function()
{
	collisionChecker.Fill(200);

	var enemies = layer_get_all_elements("Enemies");
	array_foreach(enemies, function(enemy, index)
		{
			var enemyInstance = layer_instance_get_instance(enemy);
			var gridPosition = GetPositionVector(enemyInstance);
			gridPosition.DivideByReal(scaleFactor);
			gridPosition.Floor();
			if (collisionChecker.GetValue(gridPosition.x, gridPosition.y) == 0)
			{
				enemyInstance.Circle();
			}
		});
	collisionChecker.Clear();
}

Slash = function()
{
	// collisionChecker.Grow();
	
	var enemiesHitTotal = array_create(0);
	var enemiesHit = ds_list_create();
	var pixels = collisionChecker.GetPixels();
	var pixelCount = array_length(pixels);
	for (var i = 0; i < pixelCount; ++i)
	{
		var currentPixel = pixels[i];
		currentPixel.MultiplyReal(scaleFactor);
		collision_circle_list(currentPixel.x, currentPixel.y, scaleFactor, EnemyBase, false, true, enemiesHit, false);
		ArrayPushUniqueList(enemiesHitTotal, enemiesHit);
		ds_list_clear(enemiesHit)
	}
	
	array_foreach(enemiesHitTotal, function(enemy, index)
		{
			enemy.Slash();
		}
	);
	collisionChecker.Clear();
}

Tap = function()
{
	var enemiesHit = ds_list_create();
	
	collision_circle_list(mouse_x, mouse_y, scaleFactor * 2, EnemyBase, false, true, enemiesHit, false);
	
	var enemyCount = ds_list_size(enemiesHit);
	for (var i = 0; i < enemyCount; ++i)
	{
		var enemy = ds_list_find_value(enemiesHit, i);
		enemy.Tap();
	}
	collisionChecker.Clear();
}