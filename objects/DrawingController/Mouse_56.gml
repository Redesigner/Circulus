if (global.paused)
{
	return;
}

drawing = false;
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