velocity = new Vector2();
collisionLayer = layer_tilemap_get_id("Walls");

/// @param {Struct.Vector2} delta How much to move by
Move = function(delta)
{
	move_and_collide(delta.x, delta.y, collisionLayer);
}