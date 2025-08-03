event_inherited()

origin = new Vector2();

SpawnHurtbox = function()
{
	var hurtBox = instance_create_layer(x, y, "Player", hurtboxAsset);
	hurtBox.duration = hurtBoxDuration;
	SpawnHere(FireImpactParticle);
	return hurtBox;
}