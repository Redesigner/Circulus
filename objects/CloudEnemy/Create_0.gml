event_inherited()

FireLightning = function()
{
	onCooldown = true;
	canMove = false;
	FireBullet();
	
	PlayAnimationOnce(Sp_CloudAttack, true, function() { canMove = true; });
	global.gameState.timerManager.Add(2, function() { onCooldown = false; }, id);
}