velocity = new Vector2();
collisionLayer = layer_tilemap_get_id("Floor");
grounded = false;

LandOnGround = function() {};

/// @param {Struct.Vector2} delta How much to move by
Move = function(delta)
{
	move_and_collide(delta.x, 0, collisionLayer);
	var hits = move_and_collide(0, -delta.y, collisionLayer);
	if (delta.y < 0)
	{
		if (array_length(hits) > 0)
		{
			if (!grounded)
			{
				grounded = true;
				LandOnGround();
			}
			velocity.y = 0;
		}
		else
		{
			grounded = false;
		}
	}
}


