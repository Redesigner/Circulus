event_inherited();

movementPeriod = 5;
movementStrength = 40;
movementType = MovementType.Sine;


Circle = function()
{
	if (isStunned)
	{
		TakeDamage(10); 
	}
};

Slash = function() { Stun(3); };
Tap = function() { Stun(8); };

onDeath.Register(id, function(){ PlayAnimationOnce(Sp_EyerDie, false); });