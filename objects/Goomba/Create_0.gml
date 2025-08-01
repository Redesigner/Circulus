event_inherited();

collisionLayer = [ layer_tilemap_get_id("Floor"), Goomba, Player ];
target = instance_find(Player, 0);

velocity.x = -20;
fallSpeed = 300;
Stomp = function()
{
	TakeDamage(10.0);
}