event_inherited();

if (dead)
{
	return;
}

sword.y = y + swordYOffset;

velocity.x = walkSpeed * walkDirection;

if (walkDirection < 0)
{
	sword.x = bbox_left - sprite_get_info(Sp_SwordPh).xoffset;
}
else
{
	sword.x = bbox_right + sprite_get_info(Sp_SwordPh).xoffset;
}