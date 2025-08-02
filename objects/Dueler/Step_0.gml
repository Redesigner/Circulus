event_inherited();

if (dead)
{
	return;
}

velocity.x = sign(target.x - x) * 20;

swordLeft.x = bbox_left - sprite_get_info(Sp_SwordPh).xoffset;
swordRight.x = bbox_right + sprite_get_info(Sp_SwordPh).xoffset;
swordLeft.y = y + swordYOffset;
swordRight.y = y + swordYOffset;