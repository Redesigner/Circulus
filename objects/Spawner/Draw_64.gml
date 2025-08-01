/// @desc Option Debug Text
// Mark this instance to "not visible" in order to hide this. Or delete this event

if (triggered)
{
	var str = "remaining: ";
	for (var i = 0; i <array_length_id(remaining); i++)
	{
		str += string(remaining[i]) + "|";
	}
	draw_text(25, 25,
	str
	+"\nwaves total: " + string(total_waves)
	+"\ncurrent wave: " + string(current_wave)
	)
}