if (global.paused)
{
	return;
}

inkActive = true;
drawing = true;
previousMousePosition = new Vector2(mouse_x, mouse_y);
currentDrawValue = 1;