event_inherited();

explosionDistance = 20;
active = false;

Explode = function()
{
	instance_create_depth(x, y, depth - 1, Explosion);
	instance_destroy(id);
}

Stomp = function()
{
}