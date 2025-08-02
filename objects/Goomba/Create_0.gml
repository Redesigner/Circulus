event_inherited();

collisionLayer = [ layer_tilemap_get_id("Floor"), Goomba, Player ];
target = instance_find(Player, 0);
canCollide = true;

velocity.x = -20;
fallSpeed = 300;
walkSpeed = 20;
walkDirection = -1;

Stomp = function()
{
	TakeDamage(10.0);
}