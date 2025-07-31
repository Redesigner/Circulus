event_inherited()

acceleration = 1000;
deceleration = 2000;
maxSpeed = 100;
canDoubleJump = true;

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
	velocity.y = 100;
	canDoubleJump = false;
}

LandOnGround = function()
{
	canDoubleJump = true;
}