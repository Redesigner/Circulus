event_inherited()

acceleration = 2000 * 1.5; // pixels / s^2
deceleration = 2000 * 1.5; // pixels / s^2
maxSpeed = 80 * 1.5; // pixels / s
jumpStrength = 125 * 1.5;
fallSpeed = 300 * 1.5;
dodgeLength = 0.2;
dodgeSpeed = 175 * 1.5;
isDodging = false;
canDoubleJump = true;
airControlFactor = 0.1
invincible = false;
hitPoints = 10;
maxHitPoints = 10;
input_presses = 0;
damageInvTime = 0.5; // seconds
damageInv = false; // Invuln from taking damage
key_pressed_left = keyboard_check_pressed(ord("A"));
key_pressed_right = keyboard_check_pressed(ord("D"));
dead = false;

// collisionLayer = [ layer_tilemap_get_id("Floor"), SwordHurtbox ];

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
	PlayAnimationOnce(Sp_PlayerJump, false);
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
	PlayAnimationOnce(Sp_PlayerJump, false);
}

LandOnGround = function()
{
	canDoubleJump = true;
	if (sprite_index == Sp_PlayerJump)
	{
		CancelOneShot();
	}
}

Invincibility = function(seconds)
{
	invincible = true;
	global.gameState.timerManager.Add(seconds, function()
	{
		invincible = false;
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


TakeDamage = function(damage, hitNormal = new Vector2())
{
	if (invincible || damageInv)
	{
		return;
	}
	
	if (damage <= 0)
	{
		return;
	}
	
	if (hitPoints <= 0)
	{
		return;
	}
	
	hitPoints -= damage;
	PlayAnimationOnce(Sp_PlayerDamage, true);
	
	if (!hitNormal.IsZero())
	{
		hitNormal.MultiplyReal(500);
		hitNormal.y = 50;
		velocity.Add(hitNormal);
	}
	
	if (hitPoints <= 0)
	{
		hitPoints = 0;
		Die();
	}
	damageInv = true;
	global.gameState.timerManager.Add(damageInvTime, function(){ damageInv = false; }, id);
	show_debug_message("{0} took damage! {1} health remaining", id, hitPoints);
}

Die = function()
{
	dead = true;
}

Heal = function(value)
{
	if (dead)
	{
		return;
	}
	
	hitPoints = min(hitPoints + value, maxHitPoints);
}