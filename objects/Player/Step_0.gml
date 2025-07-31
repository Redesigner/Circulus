var input = InputAxis(ord("D"), ord("A"));

if (abs(input) < 0.1)
{
	if (grounded)
	{
		if (!isDodging)
		{
			if (velocity.x > 0)
			{
				velocity.x = max(velocity.x - deceleration * DeltaTimeSeconds(), 0);
			}
			else
			{
				velocity.x = min(velocity.x + deceleration * DeltaTimeSeconds(), 0);
			}
		}
	}	
}
else
{
	var appliedAccelration = input * acceleration;
	if (!grounded)
	{
		appliedAccelration *= airControlFactor;
	}
	
	if (!isDodging)
	{
		velocity.x = clamp(velocity.x + appliedAccelration * DeltaTimeSeconds(), -maxSpeed, maxSpeed);
	}
}


//Double Tap Dodge Detection
if (grounded)
	{
		if keyboard_check_pressed(ord("D"))
		{
			input_presses += 1;
			global.gameState.timerManager.Add(dodgeLength, function()
			{
				input_presses = 0;
			}, id);
		}
		
		
		if keyboard_check_pressed(ord("A"))
		{
			input_presses -= 1;
			global.gameState.timerManager.Add(dodgeLength, function()
			{
				input_presses = 0;
			}, id);
		}
		
		if (abs(input_presses) >= 2)
		{
			Dodge();
		}
	}

velocity.y -= fallSpeed * DeltaTimeSeconds();
event_inherited()