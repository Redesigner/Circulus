active = false;
targetPosition = new Vector2();
currentLifetime = 0;

SpawnHurtbox = function()
{
	var hurtBox = instance_create_layer(x, y, "Player", hurtboxAsset);
	hurtBox.duration = hurtBoxDuration;
}