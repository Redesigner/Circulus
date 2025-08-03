if (isStunned)
{
	var alpha = 1 - stunTimer.ElapsedTimePercent();
	alpha *= alpha * alpha;
	alpha *= 2;
	draw_sprite_ext(sprite_index, image_index, x + sin((global.gameState.time + x) * 40) * alpha, y + sin((global.gameState.time + x) * 50) * alpha, image_xscale, image_yscale, direction, image_blend, image_alpha);
}
else
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction, image_blend, image_alpha);
}

if (global.drawDebug)
{
	draw_set_color(c_white);
	draw_text_ext_transformed(x - 4, bbox_top - 12, $"HP: {hitPoints}", -1, 200, 0.2, 0.2, 0);
	
	draw_text_ext_transformed(x, bbox_top - 24, sprite_index, -1, 200, 0.5, 0.5, 0);
		
	draw_set_color(c_red);
	var percentage = (fireTimerCurrent / fireTimer);
	if (percentage > 0.125)
	{
		draw_rectangle(x - 4, bbox_top - 4, x - 4 + 8 * percentage, bbox_top - 2, false);
	}
	draw_set_color(c_white);
}