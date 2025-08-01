event_inherited();

collisionLayer = [ layer_tilemap_get_id("Floor"), Goomba ];
target = instance_find(Player, 0);

Stomp = function()
{
	TakeDamage(10.0);
}