if (global.paused)
{
	return;
}

var delta = variable_clone(velocity);
if (!delta.IsZero())
{
	// Clamp time so we don't have tunneling issues
	delta.MultiplyReal(DeltaTimeSeconds());
	Move(delta);
}