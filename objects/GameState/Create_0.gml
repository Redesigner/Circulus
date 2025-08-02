global.gameState = id;

global.paused = false;
global.drawDebug = false;

timerManager = new TimerManager();
time = 0;
playerCanUnpause = false;


RoomStart = function()
{
	global.paused = true;
	playerCanUnpause = false;
	
	call_later(3, time_source_units_seconds, function()
		{
			global.paused = false;
			playerCanUnpause = true;
		});
}

RoomStart();