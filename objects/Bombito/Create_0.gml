event_inherited();

explosionDistance = 50;
active = false;
timer = 0;

Explode = function()
{
	onDeath.Invoke();
	instance_create_depth(x, y, depth - 1, Explosion);
	instance_destroy(id);
}

Stomp = function()
{
}