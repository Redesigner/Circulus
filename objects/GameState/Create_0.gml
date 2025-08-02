global.gameState = id;

global.paused = false;
global.drawDebug = false;

timerManager = new TimerManager();
time = 0;
playerCanUnpause = false;
startSequence = 0;

RoomStart = function()
{
	global.paused = true;
	playerCanUnpause = false;
	
	startSequence = layer_sequence_create(layer, 160, 90, Sq_Start);
	
	call_later(5, time_source_units_seconds, function()
		{
			global.paused = false;
			playerCanUnpause = true;
			layer_sequence_destroy(startSequence);
		});
}

RoomStart();