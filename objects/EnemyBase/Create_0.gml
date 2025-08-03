event_inherited();

hitPoints = 1;
dead = false;
target = instance_find(Player, 0);

onDeath = new Delegate();
onStunned = new Delegate();
onUnstunned = new Delegate();
canCollide = false;

fireTimerCurrent = 0;
fireTimer = random_range(fireRateMin, fireRateMax);
stunTimer = -1;

heartChance = 0.2;

TakeDamage = function(damage)
{
	if (damage <= 0)
	{
		return;
	}
	
	if (hitPoints <= 0)
	{
		return;
	}
	
	hitPoints -= damage;
	show_debug_message("{0} took damage! {1} health remaining", id, hitPoints);
	
	if (hitPoints <= 0)
	{
		hitPoints = 0;
		Die();
	}
}

Stun = function(duration)
{
	SpawnHere(CloudParticle);
	if (isStunned)
	{
		stunTimer.Reset();
		return;
	}
	
	onStunned.Invoke();
	isStunned = true;
	stunTimer = global.gameState.timerManager.Add(duration, function()
		{
			onUnstunned.Invoke();
			isStunned = false;
		}, id);
}

Circle = function()
{	
	TakeDamage(1.0);
}

Slash = function()
{
	Stun(1.0);
}

Tap = function()
{
	Stun(2.0);
}

Die = function()
{
	movementEnabled = false;
	dead = true;
	
	var destroySelf = function()
	{
		instance_destroy(id);
	}
	call_later(0.5, time_source_units_seconds,  destroySelf);
	
	var randomValue = random_range(0, 1);
	if (randomValue < heartChance)
	{
		instance_create_layer(x, (bbox_top + bbox_bottom) / 2, "Enemies", HealthPickup);
	}
	SpawnHere(CloudParticle);
	onDeath.Invoke();
}

FireBullet = function()
{
	var targetPosition = GetPositionVector(target);
	var newBullet = instance_create_layer(targetPosition.x, targetPosition.y, "Projectiles", projectileAsset);
	audio_play_sound(Sfx_Fire, 2, false);
	if (object_is_ancestor(projectileAsset, Bullet) || projectileAsset == Bullet)
	{
		newBullet.origin.x = x;
		newBullet.origin.y = y;
	}
}