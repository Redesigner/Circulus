var distance = 0;
var currentPixelColor = make_color_rgb(0, 0, 0);
if (drawing)
{
	surface_set_target(canvas);
	var mousePosition = new Vector2(mouse_x, mouse_y);
	var mousePositionDrawingGrid = mousePosition.DividedByReal(scaleFactor);
	var previousMousePositionDrawingGrid = previousMousePosition.DividedByReal(scaleFactor);
	previousMousePositionDrawingGrid.Floor();
	mousePositionDrawingGrid.Floor();
	currentPixelColor = collisionChecker.GetValue(mousePositionDrawingGrid.x, mousePositionDrawingGrid.y);
	
	draw_set_color(make_color_rgb(255, 0, 0));
	DrawLine(mousePosition, previousMousePosition, 2);
	currentDrawValue += sqrt(previousMousePosition.DistanceSquared(mousePosition) / 100);
	
	collisionChecker.AddLine(mousePositionDrawingGrid, previousMousePositionDrawingGrid, currentDrawValue);
	//collisionChecker.SetValue(floor(mousePositionDrawingGrid.x), floor(mousePositionDrawingGrid.y), currentDrawValue);
	
	surface_reset_target();
	
	previousMousePosition.x = mouse_x;
	previousMousePosition.y = mouse_y;
	
	var mousedOverValue = color_get_red(currentPixelColor);
	distance = currentDrawValue - mousedOverValue;
	if (mousedOverValue > 0 && distance > 5)
	{
		++loopsDrawn;
		drawing = false;
		resetRequested = true;
	}
}

if (resetRequested)
{
	surface_set_target(canvas);
	draw_clear_alpha(c_black, c_black);
	surface_reset_target();
	resetRequested = false;
	
	CloseLoop();
}

draw_surface(canvas, 0, 0)
draw_set_alpha(0.1);
collisionChecker.Draw(scaleFactor);

draw_set_alpha(1.0);
//draw_text_ext_transformed(0, 0, $"Loops drawn: {loopsDrawn}", -1, 200, 0.5, 0.5, 0);
//draw_text_ext_transformed(0, 8, $"Hovered pixel time: {color_get_red(currentPixelColor)}", -1, 200, 0.5, 0.5, 0);
//draw_text_ext_transformed(0, 16, distance, -1, 200, 0.5, 0.5, 0);