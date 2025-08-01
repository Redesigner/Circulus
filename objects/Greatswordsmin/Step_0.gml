event_inherited();

if (dead)
{
	return;
}
swordLeft.x = bbox_left - sprite_get_info(Sp_SwordPh).xoffset;
swordRight.x = bbox_right + sprite_get_info(Sp_SwordPh).xoffset;
swordLeft.y = y + swordYOffset;
swordRight.y = y + swordYOffset;