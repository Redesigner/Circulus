/// @desc Option Debug Text
// Mark this instance to "not visible" in order to hide this. Or delete this event

/*
if (triggered)
{
	var str = "remaining: ";
	for (var i = 0; i < array_length_id(remaining); i++)
	{
		str += string(remaining[i]) + "|";
	}
	draw_text(25, 25,
	str
	+"\nwaves total: " + string(total_waves)
	+"\ncurrent wave: " + string(current_wave)
	)
}*/

if (global.drawDebug)
{
	if (currentWave >= array_length(waves))
	{
		return;
	}
	draw_text(100, 20, timer);
	draw_text(100, 35, $"Enemies defeated this wave: {currentEnemyKillCount} / {array_length(waves[currentWave])}");
	draw_text(100, 50, $"Current wave: {currentWave + 1} / {array_length(waves)}");
}