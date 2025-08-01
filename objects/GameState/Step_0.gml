if (global.paused)
{
	return;
}

var delta = DeltaTimeSeconds();
timerManager.Step(delta);
time += delta;