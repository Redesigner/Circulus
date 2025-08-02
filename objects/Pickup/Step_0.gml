if (global.paused)
{
	return;
}

var deltaTime = DeltaTimeSeconds();
fallSpeed += fallAcceleration * deltaTime;
move_and_collide(0, fallSpeed * deltaTime, layer_tilemap_get_id("Floor"));