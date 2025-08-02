if (global.paused)
{
	if (playerCanUnpause)
	{
		global.paused = false;
	}
}
else
{
	global.paused = true;
	playerCanUnpause = true;
}
	
	
