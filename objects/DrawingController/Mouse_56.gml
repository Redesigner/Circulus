if (global.paused)
{
	return;
}

drawing = false;
resetRequested = true;

if (currentDrawValue > 4)
{
	Slash();
}
else
{
	Tap();
}