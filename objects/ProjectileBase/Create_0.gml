active = false;
targetPosition = new Vector2();
lifetime = 0;
currentLifetime = 0;

SetLifetime = function(_lifetime)
{
	lifetime = _lifetime;
	active = true;
}

SpawnHurtbox = function()
{
	var hurtBox = instance_create_layer(x, y, "Player", hurtboxAsset);
	hurtBox.duration = hurtBoxDuration;
}