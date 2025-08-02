event_inherited();

swordYOffset = -6;
sword = instance_create_layer(bbox_left + sprite_get_bbox_left(Sp_SwordPh), y + swordYOffset, layer, SwordHurtbox);
walkDirection = -1;


DieBase = method(id, Die);
Die = function()
{
	PlayAnimationOnce(Sp_GreatswordsminDie, false);
	DieBase();
	instance_destroy(sword);
}