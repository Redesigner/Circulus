drawing = false;
resetRequested = false;
currentDrawValue = 100;
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
				enemyInstance.TakeDamage(1.0);
			}
		});
	collisionChecker.Clear();
}

Slash = function()
{
	collisionChecker.Grow();
	
	var enemies = layer_get_all_elements("Enemies");
	array_foreach(enemies, function(enemy, index)
		{
			var enemyInstance = layer_instance_get_instance(enemy);
			var gridPosition = GetPositionVector(enemyInstance);
			gridPosition.DivideByReal(scaleFactor);
			gridPosition.Floor();
			if (collisionChecker.GetValue(gridPosition.x, gridPosition.y) > 1)
			{
				enemyInstance.TakeDamage(0.5);
			}
		});
	collisionChecker.Clear();
}