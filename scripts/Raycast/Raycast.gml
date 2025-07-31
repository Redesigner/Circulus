/// @param {Struct.Vector2} startPosition
/// @param {Struct.Vector2} endPosition
/// @param {Id.TileMapElement} tilemapLayer
function Raycast(startPosition, endPosition, tilemapLayer)
{
	var origin = variable_clone(startPosition);
	var hitInstance = collision_line(origin.x, origin.y, endPosition.x, endPosition.y, tilemapLayer, false, false);
	
	if (hitInstance == noone)
	{
		return endPosition;
	}
	
	var delta = endPosition.Minus(origin);
	
	while (abs(delta.x) > 1 && abs(delta.y) > 1)
	{
		
	}
}