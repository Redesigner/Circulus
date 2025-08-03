event_inherited();

collisionLayer = [ layer_tilemap_get_id("Floor"), Goomba, Player ];
target = instance_find(Player, 0);
canCollide = true;

velocity.x = -20;
fallSpeed = 100;
walkSpeed = 40;
walkDirection = -1;
jumpPower = 70;
wasPushed = false;
pushTimer = 0;

Stomp = function()
{
	TakeDamage(10.0);
}

Jump = function()
{
	grounded = false;
	velocity.y = jumpPower;
}

BasePush = method(id, Push);
/// @param {Struct.Vector2} delta
/// @param {Id.TileMapElement | Asset.GMObject | Id.Instance | Constant.All | Constant.Array | Array} target
Push = function(delta, target, stackDepth = 0)
{
	BasePush(delta, target, stackDepth);
	
	if (wasPushed)
	{
		pushTimer.Reset();
	}
	else
	{
		wasPushed = true;
		pushTimer = global.gameState.timerManager.Add(0.5, function() { wasPushed = false; }, id);
	}
}