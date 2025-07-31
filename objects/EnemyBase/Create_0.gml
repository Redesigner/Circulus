event_inherited();

hitPoints = 3;
dead = false;
target = instance_find(Player, 0);
onDeath = new Delegate();

fireTimerCurrent = 0;
fireTimer = random_range(fireRateMin, fireRateMax);
isStunned = false;
stunTimer = -1;

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
	if (isStunned)
	{
		stunTimer.Reset();
		return;
	}
	
	isStunned = true;
	stunTimer = global.gameState.timerManager.Add(duration, function()
		{
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
	onDeath.Invoke();
}

FireBullet = function()
{
	var targetPosition = GetPositionVector(target);
	var newBullet = instance_create_layer(targetPosition.x, targetPosition.y, "Projectiles", projectileAsset);
	
	if (object_is_ancestor(projectileAsset, Bullet) || projectileAsset == Bullet)
	{
		newBullet.origin.x = x;
		newBullet.origin.y = y;
	}
}