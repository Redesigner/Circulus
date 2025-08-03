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
	
	startSequence = layer_sequence_create(layer, 0, 0, Sq_Start);
	
	call_later(2.5, time_source_units_seconds, function()
		{
			global.paused = false;
			playerCanUnpause = true;
			layer_sequence_destroy(startSequence);
		});
}

GameOver = function()
{
	global.paused = true;
	playerCanUnpause = false;
	instance_create_layer(0, 0, layer, RestartButton);
}

Victory = function()
{
	global.paused = true;
	playerCanUnpause = false;
	audio_play_sound(Sfx_Victory, 2, false);
	// Play victory sequence
	call_later(1.0, time_source_units_seconds, function()
	{
		layer_sequence_create(layer, 0, 0, Sq_Victory);
		call_later(3.0, time_source_units_seconds, function()
			{
				if (room == Level8)
				{
					// do victory thing
				}
				else
				{
					room_goto_next();
				}
			});
	});
}

if (room != Tutorial && room != TutorialControls)
{
	RoomStart();
}