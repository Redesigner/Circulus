function DrawingGrid(x, y) constructor
{
	dimensions = new Vector2(x, y);
	data = array_create(x * y, 0);
	
	static GetValue = function(x, y)
	{
		if (!InBounds(x, y))
		{
			// show_error($"Attempted to access value out of index at position ({x}, {y})", true);
			return -1;
		}
		
		return data[y * dimensions.x + x];
	}
	
	static SetValue = function(x, y, value)
	{
		if (!InBounds(x, y))
		{
			// show_error($"Attempted to access value out of index at position ({x}, {y})", true);
			return;
		}
		
		data[y * dimensions.x + x] = value;
	}
	
	static AddLine = function(startPosition, endPosition, value)
	{
		var delta = endPosition.Minus(startPosition);
		var numSteps = max(abs(delta.x), abs(delta.y));
		var stepIncrement = delta.DividedByReal(numSteps);
		
		var currentPosition = variable_clone(startPosition);
		
		for (var i = 0; i < numSteps; ++i)
		{
			SetValue(round(currentPosition.x), round(currentPosition.y), value);
			currentPosition.Add(stepIncrement);
		}
	}
	
	static InBounds = function(x, y)
	{
		return x < dimensions.x && y < dimensions.y && x >= 0 && y >= 0;
	}
	
	static Draw = function(scale)
	{
		for (var gridX = 0; gridX < dimensions.x; ++gridX)
		{
			for (var gridY = 0; gridY < dimensions.y; ++gridY)
			{
				var currentGridValue = GetValue(gridX, gridY);
				if (currentGridValue == 0)
				{
					continue;
				}
				draw_set_color(make_color_rgb(currentGridValue, 0, 0));
				draw_rectangle(gridX * scale, gridY * scale, (gridX + 1) * scale - 1, (gridY + 1) * scale - 1, false);
			}
		}
		draw_set_color(c_white);
	}
	
	static Clear = function()
	{
		array_foreach(data, function(element, index){ data[index] = 0; });
	}
	
	static Fill = function(value)
	{
		var stack = array_create(0);
		array_push(stack, new Vector2(0, 0));
		array_push(stack, new Vector2(dimensions.x - 1, 0));
		array_push(stack, new Vector2(0, dimensions.y - 1));
		array_push(stack, new Vector2(dimensions.x - 1, dimensions.x - 1));
		
		while(array_length(stack) > 0)
		{
			var currentPixel = array_pop(stack);
		    var left = currentPixel.x;
		    while (GetValue(left - 1, currentPixel.y) == 0)
			{
				SetValue(left - 1, currentPixel.y, value);
			    --left;
			}
			
			while (GetValue(currentPixel.x, currentPixel.y) == 0)
			{
			    SetValue(currentPixel.x, currentPixel.y, value);
			    ++currentPixel.x;
			}
			Scan(left, currentPixel.x - 1, currentPixel.y + 1, stack)
			Scan(left, currentPixel.x - 1, currentPixel.y - 1, stack);
		}
	}
	
	static Scan = function(xLeft, xRight, y, stack)
	{
		var spanAdded = false;
		for (var xPos = xLeft; xPos < xRight; ++xPos)
		{
			if (GetValue(xPos, y) > 0)
			{
				spanAdded = false;
			}
			else if (!spanAdded)
			{
				array_push(stack, new Vector2(xPos, y));
				spanAdded = true;
			}
		}
	}
}