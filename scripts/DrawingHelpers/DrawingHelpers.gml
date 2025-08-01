function DrawingSpriteWithSize(sprite_index, image_index, x, y, w, h)
{
	var spriteWidth = sprite_get_width(sprite_index);
	var spriteHeight = sprite_get_height(sprite_index);
	var xScale = w / spriteWidth;
	var yScale = h / spriteHeight;
	draw_sprite_ext(sprite_index, image_index, x, y, xScale, yScale, 0, c_white, 1);
}