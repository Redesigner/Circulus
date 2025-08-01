event_inherited();

swordYOffset = -6;
swordLeft = instance_create_layer(bbox_left + sprite_get_bbox_left(Sp_SwordPh), y + swordYOffset, layer, SwordHurtbox);
swordRight = instance_create_layer(bbox_right + sprite_get_bbox_right(Sp_SwordPh), y + swordYOffset, layer, SwordHurtbox);

DieBase = method(id, Die);
Die = function()
{
	DieBase();
	instance_destroy(swordLeft);
	instance_destroy(swordRight);
}