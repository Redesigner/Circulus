event_inherited()

acceleration = 1000;
deceleration = 2000;
maxSpeed = 100;
canDoubleJump = true;
airControlFactor = 0.1;
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
	velocity.y = 100;
	grounded = false;
}

DoubleJump = function()
{
	var inputAxis = InputAxis(ord("D"), ord("A"));
	if (abs(inputAxis) > 0.1)
	{
		velocity.x = maxSpeed * inputAxis;
	}
	velocity.y = 100;
	canDoubleJump = false;
}

LandOnGround = function()
{
	canDoubleJump = true;
}

TakeDamage = function(damage)
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
	
	if (hitPoints <= 0)
	{
		hitPoints = 0;
		// Die();
	}
}