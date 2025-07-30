var distance = 0;
var currentPixelColor = make_color_rgb(0, 0, 0);
if (drawing)
{
	surface_set_target(canvas);
	var mousePosition = new Vector2(mouse_x, mouse_y);
	currentPixelColor = surface_getpixel(collisionChecker, mousePosition.x / scaleFactor, mousePosition.y / scaleFactor);
	
	draw_set_color(make_color_rgb(255, 0, 0));
	drawLine(mousePosition, previousMousePosition, 2);
	currentDrawValue += sqrt(previousMousePosition.DistanceSquared(mousePosition) / 100);
	
	surface_reset_target();
	surface_set_target(collisionChecker);
	draw_set_color(make_color_rgb(min(currentDrawValue, 255), 0, 0));
	drawLine(mousePosition.DividedByReal(scaleFactor), previousMousePosition.DividedByReal(scaleFactor), 0.75);
	
	previousMousePosition.x = mouse_x;
	previousMousePosition.y = mouse_y;
	
	surface_reset_target();
	draw_set_color(c_white);
	
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
	surface_set_target(collisionChecker);
	draw_clear(c_black);
	surface_reset_target();
	resetRequested = false;
}

draw_surface(canvas, 0, 0)
draw_surface_ext(collisionChecker, 0, 0, scaleFactor, scaleFactor, 0, c_white, 0.5);
draw_text_ext_transformed(0, 0, $"Loops drawn: {loopsDrawn}", -1, 200, 0.5, 0.5, 0);
draw_text_ext_transformed(0, 8, $"Hovered pixel time: {color_get_red(currentPixelColor)}", -1, 200, 0.5, 0.5, 0);
draw_text_ext_transformed(0, 16, distance, -1, 200, 0.5, 0.5, 0);