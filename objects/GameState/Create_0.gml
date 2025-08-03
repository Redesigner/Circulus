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

GameOver = function()
{
	global.paused = true;
	playerCanUnpause = false;
	instance_create_layer(camera_get_view_width(view_camera[0]) / 2, camera_get_view_height(view_camera[0]) / 2, layer, RestartButton);
}

Victory = function()
{
	global.paused = true;
	playerCanUnpause = false;
	
	// Play victory sequence
	layer_sequence_create(layer, 160, 90, Sq_Start);
	call_later(3.0, time_source_units_seconds, function() { room_goto_next(); });
}

RoomStart();