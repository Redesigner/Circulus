event_inherited();

collisionLayer = [ layer_tilemap_get_id("Floor"), Goomba, Player ];
target = instance_find(Player, 0);
canCollide = true;

velocity.x = -20;
fallSpeed = 100;
walkSpeed = 40;
walkDirection = -1;
jumpPower = 70;

Stomp = function()
{
	TakeDamage(10.0);
}

Jump = function()
{
	grounded = false;
	velocity.y = jumpPower;
}