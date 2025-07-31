event_inherited()

acceleration = 1000;
deceleration = 2000;
maxSpeed = 100;
canDoubleJump = true;
airControlFactor = 0.1;

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