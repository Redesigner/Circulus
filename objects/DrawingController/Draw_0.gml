var distance = 0;
var currentPixelColor = make_color_rgb(0, 0, 0);
if (drawing)
{
	surface_set_target(canvas);
	var mousePosition = new Vector2(mouse_x, mouse_y);
	currentPixelColor = surface_getpixel(collisionChecker, mousePosition.x / 16, mousePosition.y / 16);
	
	draw_set_color(make_color_rgb(255, 0, 0));
	drawLine(mousePosition, previousMousePosition, 2);
	currentDrawValue += sqrt(previousMousePosition.DistanceSquared(mousePosition) / 1000);
	
	surface_reset_target();
	surface_set_target(collisionChecker);
	draw_set_color(make_color_rgb(min(currentDrawValue, 255), 0, 0));
	drawLine(mousePosition.DividedByReal(16), previousMousePosition.DividedByReal(16), 0.75);
	
	previousMousePosition.x = mouse_x;
	previousMousePosition.y = mouse_y;
	
	surface_reset_target();
	draw_set_color(c_white);
	
	var mousedOverValue = color_get_red(currentPixelColor);
	distance = currentDrawValue - mousedOverValue;
	if (mousedOverValue > 0 && distance > 10)
	{
		++loopsDrawn;
		drawing = false;
		resetRequested = true;
	}
}

if (resetRequested)
{
	surface_set_target(canvas);
	draw_clear(c_black);
	surface_reset_target();
	surface_set_target(collisionChecker);
	draw_clear(c_black);
	surface_reset_target();
	resetRequested = false;
}

draw_surface(canvas, 0, 0)
// draw_surface_ext(collisionChecker, 0, 0, 16, 16, 0, c_white, 1.0);
draw_text(0, 0, $"Loops drawn: {loopsDrawn}");
draw_text(0, 16, currentPixelColor);
draw_text(0, 32, distance);