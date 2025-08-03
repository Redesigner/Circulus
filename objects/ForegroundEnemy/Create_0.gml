event_inherited();

onCooldown = false;
canMove = true;
FireLightning = function()
{
	onCooldown = true;
	FireBullet();
	
	global.gameState.timerManager.Add(2, function() { onCooldown = false; }, id);
}