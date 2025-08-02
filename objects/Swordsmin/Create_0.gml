event_inherited();

swordYOffset = -16;
sword = instance_create_depth(bbox_left + sprite_get_bbox_left(Sp_SwordPh), y + swordYOffset, depth - 1, SwordHurtbox);

DieBase = method(id, Die);
Die = function()
{
	DieBase();
	PlayAnimationOnce(Sp_SwordsminDie, false);
	instance_destroy(sword);
}