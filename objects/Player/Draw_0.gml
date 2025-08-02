draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);

if (global.drawDebug)
{
	draw_text_ext_transformed(x, y - 16, hitPoints, -1, 200, 0.2, 0.2, 0);
	draw_text_ext_transformed(x, bbox_top - 24, sprite_index, -1, 200, 0.5, 0.5, 0);
}