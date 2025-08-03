event_inherited();

movementPeriod = 5;
movementStrength = 4;
movementType = MovementType.Sine;


Circle = function()
{
	TakeDamage(10);
	layer_sequence_create(layer, 0, 0, Sq_Murderer);
	call_later(3.0, time_source_units_seconds, function() { room_goto(TestLevel); });
};
Slash = function() { };
Tap = function() { };
FireBullet = function()
{
};
onDeath.Register(id, function(){ PlayAnimationOnce(Sp_PopperDie, false); });