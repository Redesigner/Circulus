targetPosition = new Vector2();
lifetime = 0;
currentLifetime = 0;

SetLifetime = function(_lifetime)
{
	lifetime = _lifetime;
	call_later(lifetime, time_source_units_seconds, function(){ instance_destroy(id); });
}