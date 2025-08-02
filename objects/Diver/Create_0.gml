event_inherited();

z = 0;
startingPosition = GetPositionVector(id);
targetPosition = new Vector2();
canCollide = false;
startingDepth = depth;

onStunned.Register(id, function()
	{
		if (divingStartTimer != 0)
		{
			divingStartTimer.Pause();
		}
		if (divingTimer != 0)
		{
			divingTimer.Pause();
		}
	});
	
onUnstunned.Register(id, function()
	{
		if (divingStartTimer != 0)
		{
			divingStartTimer.Unpause();
		}
		if (divingTimer != 0)
		{
			divingTimer.Unpause();
		}
	});
	
onDeath.Register(id, function()
	{
		if (divingStartTimer != 0)
		{
			divingStartTimer.Pause();
		}
		if (divingTimer != 0)
		{
			divingTimer.Pause();
		}
	});

FireBullet = function()
{
}

StartDiving = function()
{
	if (dead)
	{
		return;
	}
	targetPosition = GetPositionVector(target);
	divingTimer = global.gameState.timerManager.Add(3.0, WaitForDive, id);
}

WaitForDive = function()
{
	if (dead)
	{
		return;
	}
	divingStartTimer = global.gameState.timerManager.Add(3.0, StartDiving, id);
}

divingStartTimer = global.gameState.timerManager.Add(3.0, StartDiving, id);
divingTimer = 0;

Stomp = function()
{
	TakeDamage(3.0);
}