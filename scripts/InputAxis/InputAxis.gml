function InputAxis(positive, negative)
{
	var inputAxis = 0;
	if (keyboard_check(positive))
	{
		++inputAxis;
	}
	if (keyboard_check(negative))
	{
		--inputAxis;
	}
	return inputAxis;
}