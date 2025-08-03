if (global.paused || dead)
{
	return;
}

// This should probably be temporary, but it makes sure the character doesn't fall off the screen and get stuck
if (y > room_height + 32)
{
	y = 0;
	velocity.y = 0;
}

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

var enemiesHit = 0;
var sweepingEnemies = false;
var delta = velocity.TimesReal(DeltaTimeSeconds());
delta.y = -delta.y;
if (velocity.y < 0 && !grounded)
{
	enemiesHit = Sweep(delta, [ Goomba, Diver ]);
	var numEnemiesHit = ds_list_size(enemiesHit);
	for (var i = 0; i < numEnemiesHit; ++i)
	{
		var enemy = ds_list_find_value(enemiesHit, i);
		if (enemy.bbox_top + 2 >= bbox_bottom && enemy.canCollide) // give 2 units of "grace"
		{
			enemy.Stomp();
			velocity.y = jumpStrength;
			canDoubleJump = true;
		}
	}
}
else if (grounded)
{
	sweepingEnemies = true;
	enemiesHit = Sweep(delta, Goomba);
}

if (sweepingEnemies)
{
	var numEnemiesHit = ds_list_size(enemiesHit);
	for (var i = 0; i < numEnemiesHit; ++i)
	{
		var enemy = ds_list_find_value(enemiesHit, i);
		
		if (velocity.x > 0)
		{
			if (x < enemy.x)
			{
				// enemy.x += bbox_right - enemy.bbox_left;
				enemy.Push(new Vector2(bbox_right + velocity.x * DeltaTimeSeconds() - enemy.bbox_left, 0), Goomba);
			}
		}
		else
		{
			if (x > enemy.x)
			{
				// enemy.x += bbox_left - enemy.bbox_right;
				enemy.Push(new Vector2(bbox_left + velocity.x * DeltaTimeSeconds() - enemy.bbox_right, 0), Goomba);
			}
		}
	}
}

event_inherited()



if (!dead)
{
	playerDrawingSprite.x = x;
	playerDrawingSprite.y = y;
}