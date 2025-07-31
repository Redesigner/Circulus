/// @param {Struct.Vector2} startPosition
/// @param {Struct.Vector2} endPosition
/// @param {Id.TileMapElement} tilemapLayer
function LineCast(startPosition, endPosition, tilemapLayer)
{
	return collision_line(startPosition.x, startPosition.y, endPosition.x, endPosition.y, tilemapLayer, false, false);
}

/// @param {Struct.Vector2} startPosition
/// @param {Struct.Vector2} endPosition
/// @param {Id.TileMapElement} tilemapLayer
function Raycast(startPosition, endPosition, tilemapLayer)
{
	var origin = variable_clone(startPosition);
	var destination = variable_clone(endPosition);
	
	var hitInstance = LineCast(origin, destination, tilemapLayer);
	
	if (hitInstance == noone)
	{
		return destination;
	}
	
	var delta = destination.Minus(origin);
	var halfway = LerpVector2(origin, destination, 0.5);
	
	while (abs(delta.x) > 1 || abs(delta.y) > 1)
	{
		// Sweep closer half
		var result = LineCast(origin, halfway, tilemapLayer);
		if (result != noone)
		{
			destination = halfway;
			delta = destination.Minus(origin);
			halfway = LerpVector2(origin, destination, 0.5);
			continue;
		}
		
		origin = halfway;
		delta = destination.Minus(origin);
		halfway = LerpVector2(origin, destination, 0.5);
		continue;
	}
	
	return origin;
}