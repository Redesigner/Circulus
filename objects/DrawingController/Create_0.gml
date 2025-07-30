drawing = false;
resetRequested = false;
currentDrawValue = 100;
loopsDrawn = 0;

previousMousePosition = new Vector2();
canvas = surface_create(room_width, room_height, surface_r8unorm);
collisionChecker = surface_create(room_width / 16, room_height / 16, surface_r8unorm);

drawLine = function(startPosition, endPosition, radius)
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