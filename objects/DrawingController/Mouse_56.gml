if (global.paused)
{
	return;
}

global.drawing = false;
resetRequested = true;

if (inkActive)
{
	if (currentDrawValue > 4)
	{
		Slash();
	}
	else
	{
		Tap();
	}
}

inkActive = false;