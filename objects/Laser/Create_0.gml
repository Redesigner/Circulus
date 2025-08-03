event_inherited();

var result = Raycast(new Vector2(x, 0), new Vector2(x, room_height), layer_tilemap_get_id("Floor"));
y = ceil(result.y);

var owner = instance_find(CloudEnemy, 0);
top = owner.bbox_bottom;
image_yscale = (y - top) / sprite_get_height(sprite_index);

SpawnHurtboxBase = method(id, SpawnHurtbox);

SpawnHurtbox = function()
{
	var hurtBox = SpawnHurtboxBase();
	hurtBox.image_yscale = (y - top) / sprite_get_height(hurtBox.sprite_index);
}