event_inherited()

acceleration = 2000;
deceleration = 2000;
maxSpeed = 80;
jumpStrength = 125;
fallSpeed = 300;
dodgeLength = 0.2;
dodgeSpeed = 175;
isDodging = false;
canDoubleJump = true;
airControlFactor = 0.1
invincible = false;
hitPoints = 10;
maxHitPoints = 10;
input_presses = 0;
key_pressed_left = keyboard_check_pressed(ord("A"));
key_pressed_right = keyboard_check_pressed(ord("D"));

TryJump = function()
{
	if (!grounded && !canDoubleJump)
	{
		return;
	}
	
	if (grounded)
	{
		Jump();
	}
	else
	{
		DoubleJump();
	}
}

Jump = function()
{
	velocity.y = jumpStrength;
	Invincibility(0.2);
	grounded = false;
}

DoubleJump = function()
{
	var inputAxis = InputAxis(ord("D"), ord("A"));
	if (abs(inputAxis) > 0.1)
	{
		velocity.x = maxSpeed * inputAxis;
	}
	Invincibility(0.2);
	velocity.y = jumpStrength;
	canDoubleJump = false;
}

LandOnGround = function()
{
	canDoubleJump = true;
}

Invincibility = function(seconds)
{
	invincible = true;
	sprite_index = Sp_Test_inv;
	global.gameState.timerManager.Add(seconds, function()
	{
		invincible = false;
		sprite_index = Sp_Test;
	}, id);
}

Dodge = function()
{
	if (isDodging)
	{
		return;
	}
	
	var inputAxis = InputAxis(ord("D"), ord("A"));
	isDodging = true;
	velocity.x = dodgeSpeed * inputAxis;
	Invincibility(dodgeLength);
	global.gameState.timerManager.Add(dodgeLength, function()
	{
		isDodging = false;
	}, id);
}


TakeDamage = function(damage)
{
	if (!invincible)
	{
		if (damage <= 0)
		{
			return;
		}
	
		if (hitPoints <= 0)
		{
			return;
		}
	
		hitPoints -= damage;
		show_debug_message("{0} took damage! {1} health remaining", id, hitPoints);
	}

	
	if (hitPoints <= 0)
	{
		hitPoints = 0;
		// Die();
	}
}