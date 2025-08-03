event_inherited();

explosionDistance = 100;
active = false;
timer = 0;
image_speed = 0;

Explode = function()
{
	onDeath.Invoke();
	instance_create_depth(x, y, depth - 1, Explosion);
	instance_destroy(id);
}

Stomp = function()
{
}