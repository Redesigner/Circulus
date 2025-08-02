velocity = new Vector2();
collisionLayer = layer_tilemap_get_id("Floor");
grounded = false;
maxHitPoints = 3;
playingOneShot = false;
oneShotCallback = function(){};
cancelOneShot = false;

animationSpeed = 1;

/// @param {Asset.GMSprite} animation
/// @param {Bool} cancel Should the animation stop overriding others when it's over?
/// @param {Function} callback
PlayAnimationOnce = function(animation, cancel, callback = function(){})
{
	playingOneShot = true;
	sprite_index = animation;
	image_index = 0;
	animationSpeed = 1;
	oneShotCallback = callback;
	cancelOneShot = cancel;
}

CancelOneShot = function()
{
	playingOneShot = false;
	animationSpeed = 1;
}

LandOnGround = function()
{
};

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

/// @param {Struct.Vector2} delta
/// @param {Id.TileMapElement | Asset.GMObject | Id.Instance | Constant.All | Constant.Array | Array} target
Sweep = function(delta, target)
{
	var enemies = ds_list_create();
	
	if (delta.y > 0)
	{
		if (delta.x > 0)
		{
			// Check our box, extended right and down
			collision_rectangle_list(bbox_left, bbox_top, bbox_right + delta.x, bbox_bottom + delta.y, target, false, true, enemies, false);
		}
		else
		{
			// Box, extended left and down
			collision_rectangle_list(bbox_left + delta.x, bbox_top, bbox_right, bbox_bottom + delta.y, target, false, true, enemies, false);
		}
	}
	else
	{
		if (delta.x > 0)
		{
			// Box, extended right and up
			collision_rectangle_list(bbox_left, bbox_top + delta.y, bbox_right + delta.x, bbox_bottom, target, false, true, enemies, false);
		}
		else
		{
			// Box, extended left and up
			collision_rectangle_list(bbox_left + delta.x, bbox_top + delta.y, bbox_right, bbox_bottom, target, false, true, enemies, false);
		}
	}
	return enemies;
}

/// @param {Struct.Vector2} delta
/// @param {Id.TileMapElement | Asset.GMObject | Id.Instance | Constant.All | Constant.Array | Array} target
Push = function(delta, target, stackDepth = 0)
{
	// Prevent infinite recursion
	if (stackDepth > 5)
	{
		return;
	}
	
	x += delta.x;
	y += delta.y;
	var enemiesHit = Sweep(delta, target)
	var numEnemies = ds_list_size(enemiesHit);
	
	for (var i = 0; i < numEnemies; ++i)
	{
		var enemy = ds_list_find_value(enemiesHit, i);
		if (delta.x > 0)
		{
			// enemy.x += bbox_right - enemy.bbox_left;
			enemy.Push(new Vector2(bbox_right - enemy.bbox_left, 0), Goomba, stackDepth + 1);
		}
		else
		{
			// enemy.x += bbox_left - enemy.bbox_right;
			enemy.Push(new Vector2(bbox_left - enemy.bbox_right, 0), Goomba, stackDepth + 1);
		}
	}
}
