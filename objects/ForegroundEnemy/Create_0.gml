event_inherited();

onCooldown = false;

FireLightning = function()
{
	onCooldown = true;
	FireBullet();
	
	global.gameState.timerManager.Add(2, function() { onCooldown = false; }, id);
}