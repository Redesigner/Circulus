event_inherited();

movementPeriod = 5;
movementStrength = 40;
movementType = MovementType.Circle;
isWeakened = false;


Circle = function() { if (isStunned) { TakeDamage(10); } };
Slash = function() { isWeakened = true; };
Tap = function() { if (isWeakened) { Stun(3.0); } };