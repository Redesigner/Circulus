event_inherited()

acceleration = 2000;
deceleration = 2000;
maxSpeed = 80;
jumpStrength = 125;
fallSpeed = 300;
canDoubleJump = true;
airControlFactor = 0.1
invincible = false;
hitPoints = 3;

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
	Invincibility(1);
	grounded = false;
}

DoubleJump = function()
{
	var inputAxis = InputAxis(ord("D"), ord("A"));
	if (abs(inputAxis) > 0.1)
	{
		velocity.x = maxSpeed * inputAxis;
	}
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
	object_set_sprite( Player, Sp_Test_inv );
	alarm[1] = game_get_speed(gamespeed_fps) * seconds; //Frame per seconds
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