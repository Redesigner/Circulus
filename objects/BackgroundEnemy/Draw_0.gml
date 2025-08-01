draw_sprite(sprite_index, image_index, x, y);

if (global.drawDebug)
{
	
	draw_text_ext_transformed(x - 4, y - 12, $"HP: {hitPoints}", -1, 200, 0.2, 0.2, 0);

	/* draw_set_color(c_red);
	
	draw_circle(followTargetPosition.x, followTargetPosition.y, 2, false);
	
	draw_set_color(c_green)
	draw_arrow(x, y, x + velocity.x, y - velocity.y, 4);
	*/
	draw_set_color(c_white);
}